# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/documentai/v1beta3/document_processor_service_pb"

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        module DocumentProcessorService
          ##
          # Client for the DocumentProcessorService service.
          #
          # Service to call Cloud DocumentAI to process documents according to the
          # processor's definition. Processors are built using state-of-the-art Google
          # AI such as natural language, computer vision, and translation to extract
          # structured information from unstructured or semi-structured documents.
          #
          class Client
            include Paths

            # @private
            attr_reader :document_processor_service_stub

            ##
            # Configure the DocumentProcessorService Client class.
            #
            # See {::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # ## Example
            #
            # To modify the configuration for all DocumentProcessorService clients:
            #
            #     ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.configure do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "DocumentAI", "V1beta3"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const&.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.process_document.timeout = 120.0
                default_config.rpcs.process_document.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config.rpcs.batch_process_documents.timeout = 120.0
                default_config.rpcs.batch_process_documents.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config.rpcs.review_document.timeout = 120.0
                default_config.rpcs.review_document.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the DocumentProcessorService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new DocumentProcessorService client object.
            #
            # ## Examples
            #
            # To create a new DocumentProcessorService client with the default
            # configuration:
            #
            #     client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new
            #
            # To create a new DocumentProcessorService client with a custom
            # configuration:
            #
            #     client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the DocumentProcessorService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/documentai/v1beta3/document_processor_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              credentials ||= Credentials.default scope: @config.scope
              if credentials.is_a?(String) || credentials.is_a?(Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.endpoint = @config.endpoint
              end

              @document_processor_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Processes a single document.
            #
            # @overload process_document(request, options = nil)
            #   Pass arguments to `process_document` via a request object, either of type
            #   {::Google::Cloud::DocumentAI::V1beta3::ProcessRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DocumentAI::V1beta3::ProcessRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload process_document(name: nil, document: nil, skip_human_review: nil)
            #   Pass arguments to `process_document` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The processor resource name.
            #   @param document [::Google::Cloud::DocumentAI::V1beta3::Document, ::Hash]
            #     The document payload, the [content] and [mime_type] fields must be set.
            #   @param skip_human_review [::Boolean]
            #     Whether Human Review feature should be skipped for this request. Default to
            #     false.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::DocumentAI::V1beta3::ProcessResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::DocumentAI::V1beta3::ProcessResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def process_document request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DocumentAI::V1beta3::ProcessRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.process_document.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DocumentAI::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.process_document.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.process_document.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @document_processor_service_stub.call_rpc :process_document, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # LRO endpoint to batch process many documents. The output is written
            # to Cloud Storage as JSON in the [Document] format.
            #
            # @overload batch_process_documents(request, options = nil)
            #   Pass arguments to `batch_process_documents` via a request object, either of type
            #   {::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload batch_process_documents(name: nil, input_configs: nil, output_config: nil)
            #   Pass arguments to `batch_process_documents` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The processor resource name.
            #   @param input_configs [::Array<::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchInputConfig, ::Hash>]
            #     The input config for each single document in the batch process.
            #   @param output_config [::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchOutputConfig, ::Hash]
            #     The overall output config for batch process.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def batch_process_documents request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.batch_process_documents.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DocumentAI::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "name" => request.name
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.batch_process_documents.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.batch_process_documents.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @document_processor_service_stub.call_rpc :batch_process_documents, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Send a document for Human Review. The input document should be processed by
            # the specified processor.
            #
            # @overload review_document(request, options = nil)
            #   Pass arguments to `review_document` via a request object, either of type
            #   {::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload review_document(human_review_config: nil, document: nil)
            #   Pass arguments to `review_document` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param human_review_config [::String]
            #     Required. The resource name of the HumanReviewConfig that the document will be
            #     reviewed with.
            #   @param document [::Google::Cloud::DocumentAI::V1beta3::Document, ::Hash]
            #     The document that needs human review.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def review_document request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.review_document.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DocumentAI::V1beta3::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "human_review_config" => request.human_review_config
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.review_document.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.review_document.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @document_processor_service_stub.call_rpc :review_document, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the DocumentProcessorService API.
            #
            # This class represents the configuration for DocumentProcessorService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # # Examples
            #
            # To modify the global config, setting the timeout for process_document
            # to 20 seconds, and all remaining timeouts to 10 seconds:
            #
            #     ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.configure do |config|
            #       config.timeout = 10.0
            #       config.rpcs.process_document.timeout = 20.0
            #     end
            #
            # To apply the above configuration only to a new client:
            #
            #     client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
            #       config.timeout = 10.0
            #       config.rpcs.process_document.timeout = 20.0
            #     end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"us-documentai.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "us-documentai.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution"=>1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config&.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the DocumentProcessorService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in milliseconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `process_document`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :process_document
                ##
                # RPC-specific configuration for `batch_process_documents`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :batch_process_documents
                ##
                # RPC-specific configuration for `review_document`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :review_document

                # @private
                def initialize parent_rpcs = nil
                  process_document_config = parent_rpcs&.process_document if parent_rpcs&.respond_to? :process_document
                  @process_document = ::Gapic::Config::Method.new process_document_config
                  batch_process_documents_config = parent_rpcs&.batch_process_documents if parent_rpcs&.respond_to? :batch_process_documents
                  @batch_process_documents = ::Gapic::Config::Method.new batch_process_documents_config
                  review_document_config = parent_rpcs&.review_document if parent_rpcs&.respond_to? :review_document
                  @review_document = ::Gapic::Config::Method.new review_document_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
