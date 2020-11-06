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


module Google
  module Cloud
    module ArtifactRegistry
      module V1beta2
        # DockerImage represents a docker artifact.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. registry_location, project_id, repository_name and image id forms a unique
        #     image
        #     name:`projects/<project_id>/locations/<location>/repository/<repository_name>/dockerimages/<image>`.
        #     For example,
        #     "projects/test-project/locations/us-west4/repositories/test-repo/dockerimages/
        #     nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf",
        #     where "us-west4" is the registry_location, "test-project" is the
        #     project_id, "test-repo" is the repository_name and
        #     "nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf"
        #     is the image's digest.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URL to access the image.
        #     Example:
        #     us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Tags attached to this image.
        # @!attribute [rw] image_size_bytes
        #   @return [::Integer]
        #     Calculated size of the image.
        # @!attribute [rw] upload_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time the image was uploaded.
        # @!attribute [rw] media_type
        #   @return [::String]
        #     Media type of this image, e.g.
        #     "application/vnd.docker.distribution.manifest.v2+json".
        class DockerImage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to list docker images.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the parent resource whose docker images will be listed.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of artifacts to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous list request, if any.
        class ListDockerImagesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response from listing docker images.
        # @!attribute [rw] docker_images
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1beta2::DockerImage>]
        #     The docker images returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to retrieve the next page of artifacts, or empty if there are no
        #     more artifacts to return.
        class ListDockerImagesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end