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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Source do
  @moduledoc """
  Location of the source in a supported storage service.

  ## Attributes

  *   `connectedRepository` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository.t`, *default:* `nil`) - Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  *   `gitSource` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource.t`, *default:* `nil`) - If provided, get the source from this Git repository.
  *   `repoSource` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource.t`, *default:* `nil`) - If provided, get the source from this location in a Cloud Source Repository.
  *   `storageSource` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource.t`, *default:* `nil`) - If provided, get the source from this location in Cloud Storage.
  *   `storageSourceManifest` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest.t`, *default:* `nil`) - If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectedRepository =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository.t()
            | nil,
          :gitSource =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource.t()
            | nil,
          :repoSource =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource.t()
            | nil,
          :storageSource =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource.t()
            | nil,
          :storageSourceManifest =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest.t()
            | nil
        }

  field(:connectedRepository,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1ConnectedRepository
  )

  field(:gitSource,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1GitSource
  )

  field(:repoSource,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
  )

  field(:storageSource,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
  )

  field(:storageSourceManifest,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Source do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Source.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
