# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

module Elasticsearch
  module XPack
    module API
      module Security
        module Actions

          # Creates an API key for access without requiring basic authentication.
          #
          # @option arguments [String] :refresh If `true` (the default) then refresh the affected shards to make
          #   this operation visible to search, if `wait_for` then wait for a refresh to make this operation visible to
          #   search, if `false` then do nothing with refreshes.
          #
          # @option arguments [Hash] :body The api key request to create an API key. (*Required*)
          #
          # @see https://www.elastic.co/guide/en/elasticsearch/reference/current/security-api-create-api-key.html
          #
          def create_api_key(arguments={})
            raise ArgumentError, "Required argument 'body' missing" unless arguments[:body]

            valid_params = [ :refresh ]

            method = Elasticsearch::API::HTTP_PUT
            path   = "_security/api_key"
            params = Elasticsearch::API::Utils.__validate_and_extract_params arguments, valid_params

            perform_request(method, path, params, arguments[:body]).body
          end
        end
      end
    end
  end
end
