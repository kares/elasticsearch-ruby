### DSL 0.1.8

* Swap links elasticsearch.org->elastic.co (@harry-wood)
* Add a composite aggregation (@watsonjon)
* Don't specify a type when creating mappings in tests
* Update links in elasticsearch-dsl README
* Allow Bool query and Bool filter methods to take objects as arguments
* Edit tests on bool query / filter to match context

## 7.0.0.pre

* Added `elastic_ruby_console` executable

### Client

* Fixed failing integration test
* Updated the Manticore development dependency
* Fixed a failing Manticore unit test
* Removed "turn" and switched the tests to Minitest
* Fixed integration tests for Patron
* Allow passing request headers in `perform_request`
* Added integration test for passing request headers in `perform_request`
* Added, that request headers are printed in trace output, if set
* Fix typos in elasticsearch-transport/README.md
* Assert that connection count is at least previous count when reloaded
* Adjust test for change in default number of shards on ES 7
* Abstract logging functionality into a Loggable Module (#556)
* Convert client integration tests to rspec
* Add flexible configuration in spec helper
* Use helper methods in spec_helper
* Remove minitest client integration tests in favor of rspec test
* Convert tests to rspec and refactor client
* minor changes to the client specs
* Use pry-nav in development for JRuby
* Keep arguments variable name for now
* Skip round-robin test for now
* Mark test as pending until there is a better way to detect rotating nodes
* Remove client unit test in favor of rspec test
* Comment-out round-robin test as it occasionally passes and pending is ineffective
* Document the default host and port constant
* Add documentation to spec_helper methods
* Redacted password if host info is printed in error message
* Adds tests for not including password in logged error message
* The redacted string change will be in 6.1.1
* Add more tests for different ways to specify client host argument
* Do not duplicate connections in connection pool after rebuild (#591)
* Ensure that the spec rake task is run as part of integration tests
* Use constant to define Elasticsearch hosts and avoid yellow status when number of nodes is 1
* Update handling of publish_address in _nodes/http response
* Add another test for hostname/ipv6:port format

### API

* Added the `wait_for_active_shards` parameter to the "Indices Open" API
* Added the "Indices Split" API
* Added the `wait_for_no_initializing_shards` argument to the "Cluster Health" API
* Added the "Cluster Remote Info" API
* Remove the dependency on "turn"
* Clear cluster transient settings in test setups
* Use `YAML.load_documents` in the REST tests runner
* Removed pinning dependency for Minitest
* Replaced the testing framework from Test::Unit to Minites and improved test output
* Added, that trace logs are printed when the `TRACE` environment variable is set
* Removed the "turn" dependency from generated test_helper.rb
* Update the "Delete By Query" API to support :slices
* Speed up `Elasticsearch::API::Utils.__listify`
* Speed up `Elasticsearch::API::Utils.__pathify`
* Use "String#strip" and "String.empty?" in `Utils.__pathify`
* Updated the inline documentation for using scripts in the "Update" API
* Updated the "Scroll" API inline example with passing the scroll ID in the body
* Marked the `percolate` method as deprecated and added an example for current percolator
* Fixed, that `Utils.__report_unsupported_parameters` and `Utils.__report_unsupported_method` use `Kernel.warn` so they can be suppressed
* Fixed the "greedy" regex in the `Utils.__rescue_from_not_found` method
* Fixed the incorrect `create` method
* Allow passing headers in `perform_request`
* Set application/x-ndjson content type on Bulk and Msearch requests
* Update the Reindex API to support :slices
* Fixed and improved the YAML tests runner
* Added the `include_type_name` parameter to APIs
* Fixed the helper for unit tests
* Removed the requirement for passing the `type` parameter to APIs
* Removed dead code from the YAML tests runner
* Fixed the `api:code:generate` Thor task
* Add copy_settings as valid param to split API
* Port api/actions tests to rspec (#543)
* Update tests to not require type
* Account for escape_utils not being available for JRuby
* Add nodes/reload_secure_settings endpoint support (#546)
* Add new params for search and msearch API
* Retrieve stashed variable if referenced in test
* Convert cat API tests to rspec
* Convert cluster API tests to rspec
* Convert indices tests to rspec
* Fix documentation of #indices.analyze
* Avoid instantiating an array of valid params for each request, each time it is called (#550)
* Add headers to custom client documentation (#527)
* Fix typos in README
* Minor update to scroll documentation example
* Convert snapshot, ingest, tasks, nodes api tests to rspec
* Update source_includes and source_excludes params names for mget
* Update source_includes and source_excludes params names for get, search, bulk, explain
* Update source_includes and source_excludes params names for get_source
* Mark _search endpoint as deprecated
* Link to 6.0 documentation explicitly for _suggest deprecation
* Update documentation for msearch
* Update documentation for scroll_id to be in body of scroll endpoint
* Remove reference to deprecated format option for _analyze endpoint
* Correct endpoints used for get and put search template
* Fix minor typo
* Note that a non-empty body argument is required for the bulk api
* Add note about empty body in yard documentation
* Support if_primary_term param on index API
* Delete test2 template in between tests in case a test is not cleanup up properly
* Support ignore_throttled option on search API
* Updates for types removal changes
* Add missing update param
* Add missing params to methods
* Support if_primary_term param for delete
* Delete an index and index template not cleaned up after in rest api tests
* Update supported params for cat API endpoints
* Update supported params for cluster API endpoints
* Update supported params for indices API endpoints
* Update supported params for ingest API endpoints
* Update supported params for nodes API endpoints
* Update supported params for snapshot API endpoints
* Update missed node API endpoints
* Update missed tasks API endpoints
* Update top-level api endpoints
* Adjust specs and code after test failures
* Fix accidental overwrite of index code
* Add missing param in cat/thread_pool
* The type argument is not required in the index method
* Delete 'nomatch' template to account for lack of test cleanup
* Ensure that the :index param is supported for cat.segments
* Ensure that the :name param is passed to the templates API

### DSL

* Add inner_hits option support for has_parent query
* Add inner_hits option support for has_child query
* Add inner_hits option support for has_parent filter
* Add inner_hits option support for has_child filter
* adds query support for nested queries in filter context (#531)
* Convert aggregations/pipeline tests to rspec (#564)
* Convert aggregations tests to rspec (#566)
* Convert filters tests to rspec (#567)
* Fix bug in applying no_match_filter to indices filter
* Update test for current elasticsearch version
* Fix integration tests for join field syntax
* Update agg scripted metric test for deprecation in ES issue #29328
* Fix script in update for #29328
* minor: fix spacing
* Convert queries tests to rspec (#569)
* Add inner_hits test after cherry-picking rspec conversion
* Remove tests already converted to rspec
* spec directory structure should mirror code directory structure
* Support query_string type option
* Ensure that filters are registered when called on bool queries (#609)
* Don't specify a type when creating mappings in tests

### XPACK

* Embedded the source code for the `elasticsearch-xpack` Rubygem
* Fixed the `setup` for YAML integration tests
* Added missing X-Pack APIs
* Improved the YAML integration test runner
* Updated the Rakefile for running integration tests
* Added, that password for Elasticsearch is generated
* Fixed the Watcher example
* Updated the README
* Added gitignore for the `elasticsearch-xpack` Rubygem
* Add ruby-prof as a development dependency
* Handle multiple roles passed to get_role_mapping
* Minor updates to xpack api methods (#586)
* Support freeze and unfreeze APIs
* Rewrite xpack rest api yaml test handler (#585)
* Updates to take into account SSL settings
* Fix mistake in testing version range so test can be skipped
* Support set_upgrade_mode machine learning API
* Support typed_keys and rest_total_hits_as_int params for rollup_search
* Improve string output for xpack rest api tests
* Fix logic in version checking
* Support if_seq_no and if_primary_term in put_watch
* Don't test execute_watch/60_http_input because of possible Docker issue
* Support api key methods
* Fix minor typo in test description
* Fix issue with replacing argument value with an Integer value
* Support transform_and_set in yaml tests
* Skip two more tests
* Run security tests against elasticsearch 7.0.0-rc2
* Account for error when forecast_id is not provided and legacy path is used
* Blacklist specific tests, not the whole file
* Fix version check for skipping test

_Note: Up-to-date changelogs for each version can be found in their respective branches
(e.g. [1.x/CHANGELOG.md](https://github.com/elastic/elasticsearch-ruby/blob/1.x/CHANGELOG.md))_

## 6.0.0

Elasticsearch 6.0 compatibility.

### API

* Added missing arguments to the "Exists" API
* Added missing parameters to the "Indices Clear Cache" API
* Added missing parameters to the "Indices Delete" API
* Added missing parameters to the "Multi Search" API
* Added missing parameters to the "Search" API
* Added missing parameters to the "Search" API
* Added requirement for the `id` argument for the "Create" API
* Added support for additional parameters to the "Cluster State" API
* Added support for additional parameters to the "Rollover" API
* Added the "Remote Info" API
* Added the "verbose" parameter to the "Get Snapshot" API
* Aded the "Get Task" API
* Changed, that the YAML test content is not printed unless `DEBUG` is set
* Fixed a failing unit test for the "Create Document" API
* Fixed handling of parameters in the "Rollover" API
* Fixed incorrect handling of `catch` clauses in the YAML tests runner
* Fixed incorrect handling of node ID in the "Nodes Stats" API
* Fixed incorrect URL parameter in "Indices Flush" unit test
* Fixed the failing unit tests for "Scroll" APIs
* Fixes for the "Scroll" API
* Updated and improved the YAML test runner

### Client

* Added default value 'application/json' for the 'Content-Type' header
* Added escaping of username and password in URL
* Added proper handling of headers in client options to the Manticore adapter
* Don't block waiting for body on HEAD requests
* Fixed double logging of failed responses
* Fixed incorrect test behaviour when the `QUIET` environment variable is set
* Fixed the bug with `nil` value of `retry_on_status`
* Fixed the incorrect paths and Typhoeus configuration in the benchmark tests
* Fixed the integration tests for client
* Fixed typo in default port handling during `__build_connections`
* Swallow logging of exceptions when the `ignore` is specified

## 5.0.5

### Client

* Added escaping of username and password in URL
* Don't block waiting for body on HEAD requests

### API

* Aded the "Get Task" API
* Fixed handling of parameters in the "Rollover" API
* Added requirement for the `id` argument for the "Create" API
* Added support for additional parameters to the "Rollover" API
* Added support for additional parameters to the "Cluster State" API
* Fixed incorrect handling of `catch` clauses in the YAML tests runner
* Fixed a failing unit test for the "Create Document" API
* Removed unsupported parameters from the "Indices Flush" API
* Added the "Remote Info" API
* Fixed incorrect URL parameter in "Indices Flush" unit test
* Fixed incorrect handling of node ID in the "Nodes Stats" API
* Fix the path for indices exists_type? method & update docs
* Added terminate_after parameter to Count action
* Marked the `percolate` method as deprecated and added an example for current percolator
* Fixed, that `Utils.__report_unsupported_parameters` and `Utils.__report_unsupported_method`
  use `Kernel.warn` so they can be suppressed
* Update the Reindex API to support :slices

### DSL

* Added the `match_phrase` and `match_phrase_prefix` queries
* Removed the `type` field from the "Match" query
* Added an integration test for the "match phrase prefix" query

## 5.0.4

### Client

* Fixed incorrect test behaviour when the `QUIET` environment variable is set
* Fixed double logging of failed responses
* Swallow logging of exceptions when the `ignore` is specified
* Fixed the bug with `nil` value of `retry_on_status`

### API

* Added the "Field Capabilities" API
* Changed, that the YAML test content is not printed unless `DEBUG` is set
* Fixed the failing unit tests for "Scroll" APIs
* Added missing parameters to the "Search" API
* Added missing parameters to the "Multi Search" API
* Added missing parameters to the "Indices Clear Cache" API
* Added missing arguments to the "Exists" API
* Fixes for the "Scroll" API
* Improved the YAML test runner

## 5.0.3

### Client

* Added proper handling of headers in client options to the Manticore adapter

## 5.0.2

### Client

* Added default value 'application/json' for the 'Content-Type' header

## 5.0.0

### API

* Updated the parameters for Elasticsearch 5.x APIs
* Added Elasticsearch 5.x APIs


## EXT:0.0.27

* Allow passing the Elasticsearch version to the Test::Cluster extension
* Improved the profiling extension
* Added that the timeout in `__determine_version` is configurable and increased the default value
* Improved the integration test for the `Test::Cluster` extension
* Improved the test infrastructure
* Added the Elasticsearch start command for the 6.x version to the test/cluster extension
* Added the "oj" and "patron" Rubygem to the list of runtime dependencies

## DSL:0.1.5

* Added support for the ["Exists" Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-exists-query.html)
* Added missing `like` and `unlike` options to the ["More Like This" Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html)
* Added missing `time_zone` option to the ["Query String" Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html)
* Added missing `inner_hits` option to the [Nested Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-nested-query.html)
* Allow calling the `filter` method for the [Bool Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-bool-query.html) multiple times
* Added missing `minimum_should_match`, `prefix_length`, `max_expansions`, `fuzzy_rewrite`, `analyzer`, `lenient`, `zero_terms_query` and `cutoff_frequency` options to the [Match Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-match-query.html)
* Added missing `minimum_should_match` and `boost` options to the [Bool Query](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-bool-query.html)
* Refactored the [Aggregations](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-aggregations.html) collection into its own `AggregationsCollection` class

## EXT:0.0.23

* Fixed removing the data directory for Elasticsearch 5 and 6 in the test cluster
* Added, that Elasticsearch process is properly killed when determining version
* Updated the test cluster class to be compatible Elasticsearch 6.x
* Added `the max_local_storage_nodes` setting to the start command arguments for Elasticsearch 5.x
* Improved the documentation and error messsages for the test cluster
* Updated the "Reindex" extension for Elasticsearch 5.x

## 1.1.3

### Client

* Fixed MRI 2.4 compatibility for 1.x
* Fixed failing integration test for keeping existing collections

## 1.1.0

### API

* Added deprecation notices to API methods and arguments not supported on Elasticsearch 1.x

## 2.0.2

### Client

* * Fixed the bug with `nil` value of `retry_on_status`

### API

* * Added, that `_all` is used as default index in "Search Exists" API
* * Added, that `index` and `type` parameters are respected in the "Search Exists" API

## EXT:2.0.2

* * Updated the `Test::Cluster` extension

## 2.0.0

* Added deprecation notices to API methods and parameters not supported on Elasticsearch 2.x

## DSL:0.1.4

* Added correct implementation of `Sort#empty?`
* Added the `filter` method to the Bool query
* Added the pipeline aggregations
* Allowed access to calling context from search block

## EXT:0.0.22

* Refactored and significantly improved the "Reindex" extension
* Refactored and improved the `Extensions::Test::Cluster` extension

## 1.0.18

* Fixed the incorrect Rake dependency on Ruby 1.8 and updated the Rake dependency to 11.1
* Simplified the main README and added the information about the DSL and Watcher libraries

### API

* Added `ignore: 404` to integration test setup blocks
* Added options to the "Indices Get" and "Indices Flush Synced" APIs
* Added the "Cat Tasks", "Cluster Stats", "Explain allocation", "Ingest", "Reindex" and "Update By Query" APIs
* Added the `:terminate_after` parameter to the "Search" API
* Added the `:timeout` option to the Nodes "Hot Threads", "Info" and "Stats" APIs
* Added the `:timeout` parameter to the Nodes "Hot Threads", "Info" and "Stats" APIs
* Added the `:verbose` option to the "Indices Segments" API and fixed formatting
* Added the `explain` option to the "Analyze" API
* Added the `filter` parameter for the "Indices Analyze" API
* Added the `group_by` option to the "Tasks List" API
* Added the `include_defaults` option to the "Get Cluster Settings" API
* Added the `include_defaults` parameter to the "Indices" APIs
* Added the `preserve_existing` option to the "Indices Put Settings" API
* Added the `request_cache` parameter to the "Search" API
* Added the `retry_failed` option to the "Cluster Reroute" API
* Added the `size` parameter to the "Cat Thread Pool" API
* Added the `update_all_types` parameter to "Indices Create" and "Indices Put Mapping" APIs
* Added the parameters for ingest nodes into the "Bulk" and "Index" APIs
* Fixes and improvements of handling the API method parameters
* Changed, that the "Ping" API returns false also on connection errors (server "not reachable")
* Added a `Utils.__report_unsupported_method` and `Utils.__report_unsupported_parameters` methods

### Client

* Fixed, that the clients tries to deserialize an empty body
* Fixed, that dead connections have not been removed during reloading, leading to leaks

## EXT:0.0.21

* Improved the documentation for the "Backup" extension and added it to the main README
* Added the information about the "Reindex" extension to the README
* Added a reindex extension
* Improved the `Elasticsearch::Extensions::Test::Cluster` extension

## 1.0.17

### Client

* Fixed, that existing connections are not re-initialized during reloading ("sniffing")

## 1.0.16

* Added notes about ES 2.x compatibility
* Fixes and updates to the Travis CI configuration
* Updated the `elasticsearch:build` Rake task

### API

* Added the ability to set a custom JSON serializer
* Added, that`fields` and `fielddata_fields` in the Search API are not escaped
* Fixed the incorrect handling of `:data` keys in the Utils#__bulkify method
* Added fixes to suppress warnings in the verbose mode
* Added support for new Cat API calls

### Client

* Added, that username and password is automatically escaped in the URL
* Changed, that the password is replaced with `*` characters in the log
* Bumped the "manticore" gem dependency to 0.5
* Improved the thread-safety of reloading connections
* Improved the Manticore HTTP client
* Fixed, that connections are reloaded _before_ getting a connection
* Added a better interface for configuring global HTTP settings such as protocol or authentication

## DSL:0.1.3

* Changed, that `global` aggregation takes a block
* Updated the README example to work with Elasticsearch 2.x
* Improved the documentation and integration tests for inner (nested) aggregaation
* Added the option method `field` and `script` to the "stats" aggregation

## EXT:0.0.20

* Fixed the implementation of keeping the test cluster data and state around between restarts

## 1.0.15

* Updated the Travis CI configuration

### API

* Added `bytes` as a valid parameter to "Shards" and "Segments" Cat API
* Added support for the `local` argument in the "Get Warmer" API
* Added support for `fields` argument in the "Get Field Mapping" API
* Fixed an error in the YAML runner handling of ENV['TEST_CLUSTER_PARAMS']
* Validate and extract params from indices.get_warmer arguments

### Client

* Added the option to configure the Faraday adapter using a block and the relevant documentation
* Added information about configuring the client for the Amazon Elasticsearch Service
* Added the `retry_on_status` option to retry on specific HTTP response statuses
* Changed, that transports can close connections during `__rebuild_connections`
* Added, that the Manticore adapter closes connections during reload ("sniffing")

## 1.0.14

* Clarified version support of Elasticsearch
* Improved the `elasticsearch:build` Rake task to work with branch names

### API

* Added support for the `:ignore` option to the "Snapshot and Restore" API
* Added support for the `:ignore` option to the Status API
* Added the "Cat Nodeattrs" API
* Added the "fields" parameter to the Bulk API
* Added the "Render Search Template" API
* Added the "Shard Stores" API
* Added, that document ID is URL-escaped when percolating an existing document
* Allow passing TEST_CLUSTER_PARAMS to the test cluster
* Define the path to core REST tests dynamically based on Elasticsearch version
* Fixed example in "Get Warmer" API
* Fixed incorrect documentation and link in the "Clear Cache" API
* Fixed integration tests for the "Snapshot and Restore" API
* Fixed the incorrect path in "Field Stats" API and added support for the `body` argument
* Fixed, that `type` is not added both to path and URL parameters in the Bulk API
* Updated the examples in README and documentation (facets -> aggregations)

### Client

* Added an argument to control clearing out the testing cluster
* Fixed, that reloading connections works with SSL, authentication and proxy/Shield
* Highlight the need to set `retry_on_failure` option with multiple hosts in documentation

## DSL:0.1.2

* Added fuzziness option to the "Match" query
* Added the `format` option to range filter and query
* Added, that `*args` are passed to the Options initializer

## EXT:0.0.19

* Added `es.path.repo` to the testing cluster
* Added `path_logs` option to test cluster
* Added the `testattr` attribute to the testing cluster
* Changed the default network host for the testing cluster to "localhost", to enable new "multicast"

## 1.0.13

### Client

* Added, that connection reloading supports Elasticsearch 2.0 output
* Improved thread safety in parts of connection handling code

## DSL:1.0.1

* Added additional option methods to the "Multi Match" query

## 1.0.12

### API

* Fixed a regression when rescuing NotFound errors

## 1.0.11

* Fixed incorrect Hash syntax for Ruby 1.8 in client.rb

## 1.0.10

### Client

* Cleaned up handling the `reload_connections` option for transport
* Be more defensive when logging exception
* Added, that the Manticore transport respects the `transport_options` argument
* Added a top level `request_timeout` argument

### API

* Added the "Indices Seal" API
* Added unified/centralized `NotFound` error handling

### Watcher

* Added the integration with Elasticsearch Watcher plugin

## 1.0.9

* Improved the `elasticsearch::build` task in the main Rakefile
* Merged the 'elasticsearch-dsl' gem into the main repository

### Client

* Changed the argument compatibility check in `__extract_hosts()` from `respond_to?` to `is_a?`
* Document the DEFAULT_MAX_RETRIES value for `retry_on_failure`
* Leave only Typhoeus as the primary example of automatically detected & used HTTP library in README
* Make sure the `connections` object is an instance of Collection
* Prevent mutating the parameter passed to __extract_hosts() method
* Removed the `ipv4` resolve mode setting in the Curb adapter
* Update Manticore to utilize new SSL settings
* Updated the Curb integration test to not fail on older Elasticsearch versions

### API

* Added `_source_transform` to the list of permitted parameters
* Added extra valid arguments to "Count" and "Validate Query" APIs
* Improved and extended the YAML integration test suite runner
* Added extra valida parameters to various APIs
* Added the "Cat Plugins", "Field Stats" and "Search Exists" APIs
* Changed, that `:body` parameter is preferred in the "Scroll" and "Clear Scroll" APIs
* Changed, that predicate method variants are used in RDoc code examples
* Fixed spelling mistakes in the documentation

### DSL

* Added the `elasticsearch-dsl` gem

## 1.0.8

* Fixed incorrect dependency specification in the "elasticsearch" wrapper gem

## EXT:0.0.18

* Removed the deprecated options for launching the test cluster
* Added removing the data folder for `cluster_name` to make sure the testing cluster starts green
* Make sure the `cluster_name` argument is not empty/dangerous in test cluster launcher
* Changed, that test cluster is stopped with `INT` rather than `KILL` signal

## 1.0.7

### Client

* Fixed, that the Curb transport passes the `selector_class` option
* Added handling the `::Curl::Err::TimeoutError` exception for Curb transport
* Reworded information about authentication and added example for using SSL certificates
* Added information about the `ELASTICSEARCH_URL` environment variable to the README
* Allow passing multiple URLs separated by a comma to the client
* Fixed an error where passing `host: { ... }` resulted in error in Client#__extract_hosts

### API

* Fixed incorrect escaping of multiple indices in the "Put Alias" API
* Changed the "Scroll" and "Clear Scroll" APIs to send `scroll_id` in the body
* Updated and fixed the `termvectors` API
* Added the `query_cache` URL parameter to the Search API
* Changed frequently used strings into constants
* Removed the "activesupport" development dependency to prevent test error on Ruby 1.8
* Added the "Cat Segments" API
* Updated the code and documentation for the "Cluster State" API
* Fixed incorrect examples for the "Percolate" API
* Added a `Elasticsearch::API.settings` method for accessing module settings
* Added a `Elasticsearch::API.settings[:skip_parameter_validation]` setting support into `__validate_and_extract_params`
* Added `master_timeout` parameters to the "Template Exists" and "Get Template" APIs
* Fixed incorrect encoding of Array parameters
* Added support for the `metric` parameter in the "Nodes Info" API
* Added the skip features to the YAML test runner (stash_in_path,requires_replica)
* Fixed the Ruby 1.8-incompatible syntax in the "Nodes Info" API
* Added question mark versions for predicate methods
* Added, that `indices.delete` accepts the `:ignore` parameter

### Various

* Changed the way elasticsearch/elasticsearch repository is embedded
* Added the `setup` Rake task
* Added chapter about development to the READMEs
* Added the "test-unit" gem for Ruby 2.2
* Fixed the `elasticsearch:build` Rake task

## EXT:0.0.17

### Extensions

* Improved the aesthetics and robustness of the `Test::Cluster#__print_cluster_info` method
* Removed the dependency on the "Backup" gem (using mocks in tests)

## EXT:0.0.16

### Extensions

* Disabled `allocation.disk.threshold_enabled` in the testing cluster
  to prevent tests failing due to low disk space
* Increased the default logging level for the testing cluster to `DEBUG`
* Added basic integration with the Backup gem
* Changed, that `wait_for_green` timeout is configurable with an environment variable

## 1.0.6

### Client

* Added Manticore transport for JRuby platforms
* Fixed, that `ServerError` inherits from `Transport::Error`
* Fix problems with gems on JRuby
* Added the `send_get_body_as` setting

### API

* Added the "Verify Snapshot" API
* Added the "Upgrade Index" API
* Added support for the `realtime` parameter to the Term Vectors APIs
* Fixed `delete_by_query` example in documentation
* Added the support for `metric` URL parameter to the "Reroute" API
* Added the "Get Indices Info" API
* Added support for versioning for the "Put Script" and "Delete Script" APIs

### Extensions

* Added, that `wait_for_green` timeout for test cluster is configurable with environment variable

### Various

* Added Ruby 2.0.0 and updated 2.1 build specification in the Travis configuration

## 1.0.5

### Client

* Added support for automatically connecting to cluster set in the ELASTICSEARCH_URL environment variable
* Improved documentation

### API

* Added the `flat_settings` and `local` parameters to the "Get Template" API

## 1.0.4

### Client

* Updated the parameters list for APIs (percolate, put index)
* Updated the "Indices Stats" API
* Improved the `__extract_parts` utility method

### API

* Fixed incorrect instructions for automatically using Typhoeus as the Faraday adapter
* Fixed, that the Faraday adapter didn't return a correct <Response> object
* Added, that the response body is automatically force-encoded to UTF-8

## 1.0.3

[SKIP]

## 1.0.2

* Improved the `elasticsearch:build` Rake task

### API

* Added more examples into the documentation
* Added missing parameters to the "Search" API
* Added the `force` option to the "Optimize" API
* Added support for `version` and `version_type` parameters in the "Get Document" API
* Added the "Cat Fielddata", "Recovery", "Search Shards", "Search Template", "Snapshot Status" APIs
* Added the `human` parameter to COMMON_QUERY_PARAMS
* Updated the "Index Stats" API to the current implementation

### Transport

* Added, that error requests are properly logged and traced
* Fixed an error where exception was raised too late for error responses

### Extensions

* Enabled the "Benchmark" API on the testing cluster
* Enabled dynamic scripting by default in the test cluster

-----

## 1.0.1

* Updated 0.90/1.0 compatibility notice
* Many improvements for the continuous integration (Travis, Jenkins)
* Improved documentation

### API

* Added the "explain" parameter for `cluster.reroute`

### Transport

* Added auto-detection for Faraday adapter from loaded Rubygems

### Extensions

* Improved the documentation for `Elasticsearch::Extensions::Test::Cluster`
