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
    module DataCatalog
      module V1
        # Describes a Cloud Storage fileset entry.
        # @!attribute [rw] file_patterns
        #   @return [::Array<::String>]
        #     Required. Patterns to identify a set of files in Google Cloud Storage.
        #     See [Cloud Storage
        #     documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
        #     for more information. Note that bucket wildcards are currently not
        #     supported.
        #
        #     Examples of valid file_patterns:
        #
        #      * `gs://bucket_name/dir/*`: matches all files within `bucket_name/dir`
        #                                  directory.
        #      * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir`
        #                                   spanning all subdirectories.
        #      * `gs://bucket_name/file*`: matches files prefixed by `file` in
        #                                  `bucket_name`
        #      * `gs://bucket_name/??.txt`: matches files with two characters followed by
        #                                   `.txt` in `bucket_name`
        #      * `gs://bucket_name/[aeiou].txt`: matches files that contain a single
        #                                        vowel character followed by `.txt` in
        #                                        `bucket_name`
        #      * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ...
        #                                      or `m` followed by `.txt` in `bucket_name`
        #      * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match
        #                                  `a/*/b` pattern, such as `a/c/b`, `a/d/b`
        #      * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        #
        #     You can combine wildcards to provide more powerful matches, for example:
        #
        #      * `gs://bucket_name/[a-m]??.j*g`
        # @!attribute [r] sample_gcs_file_specs
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::GcsFileSpec>]
        #     Output only. Sample files contained in this fileset, not all files
        #     contained in this fileset are represented here.
        class GcsFilesetSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifications of a single file in Cloud Storage.
        # @!attribute [rw] file_path
        #   @return [::String]
        #     Required. The full file path. Example: `gs://bucket_name/a/b.txt`.
        # @!attribute [r] gcs_timestamps
        #   @return [::Google::Cloud::DataCatalog::V1::SystemTimestamps]
        #     Output only. Timestamps about the Cloud Storage file.
        # @!attribute [r] size_bytes
        #   @return [::Integer]
        #     Output only. The size of the file, in bytes.
        class GcsFileSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end