# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest do
  @moduledoc """
  Location of the source manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).

  ## Attributes

  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
  *   `object` (*type:* `String.t`, *default:* `nil`) - Cloud Storage object containing the source manifest. This object must be a JSON file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => String.t() | nil,
          :generation => String.t() | nil,
          :object => String.t() | nil
        }

  field(:bucket)
  field(:generation)
  field(:object)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
