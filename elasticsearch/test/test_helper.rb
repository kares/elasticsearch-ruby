# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

ELASTICSEARCH_HOSTS = if hosts = ENV['TEST_ES_SERVER'] || ENV['ELASTICSEARCH_HOSTS']
                        hosts.split(',').map do |host|
                          /(http\:\/\/)?(\S+)/.match(host)[2]
                        end
                      end.freeze

TEST_HOST, TEST_PORT = ELASTICSEARCH_HOSTS.first.split(':') if ELASTICSEARCH_HOSTS

JRUBY = defined?(JRUBY_VERSION)

if ENV['COVERAGE'] && ENV['CI'].nil?
  require 'simplecov'
  SimpleCov.start { add_filter "/test|test_/" }
end

if ENV['CI']
  require 'simplecov'
  require 'simplecov-rcov'
  SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
  SimpleCov.start { add_filter "/test|test_" }
end

# Register `at_exit` handler for integration tests shutdown.
# MUST be called before requiring `test/unit`.
at_exit { Elasticsearch::Test::IntegrationTestCase.__run_at_exit_hooks }

require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require 'mocha/minitest'

require 'require-prof' if ENV["REQUIRE_PROF"]
require 'elasticsearch'
RequireProf.print_timing_infos if ENV["REQUIRE_PROF"]

if defined?(RUBY_VERSION) && RUBY_VERSION > '1.9'
  require 'elasticsearch/extensions/test/cluster'
  require 'elasticsearch/extensions/test/startup_shutdown'
  require 'elasticsearch/extensions/test/profiling' unless JRUBY
end

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

module Minitest
  module Assertions
    def assert_nothing_raised(*args)
      begin
        line = __LINE__
        yield
      rescue RuntimeError => e
        raise MiniTest::Assertion, "Exception raised:\n<#{e.class}>", e.backtrace
      end
      true
    end

    def assert_not_nil(object, msg=nil)
      msg = message(msg) { "<#{object.inspect}> expected to not be nil" }
      assert !object.nil?, msg
    end

    def assert_block(*msgs)
      assert yield, *msgs
    end

    alias :assert_raise :assert_raises
  end
end

module Elasticsearch
  module Test
    class IntegrationTestCase < ::Minitest::Test
      extend Elasticsearch::Extensions::Test::StartupShutdown

      shutdown { Elasticsearch::Extensions::Test::Cluster.stop if ENV['SERVER'] && started? && Elasticsearch::Extensions::Test::Cluster.running? }

    end
  end

  module Test
    class ProfilingTest < ::Minitest::Test
      extend Elasticsearch::Extensions::Test::StartupShutdown
      extend Elasticsearch::Extensions::Test::Profiling

      shutdown { Elasticsearch::Extensions::Test::Cluster.stop if ENV['SERVER'] && started? && Elasticsearch::Extensions::Test::Cluster.running? }

    end unless JRUBY
  end
end
