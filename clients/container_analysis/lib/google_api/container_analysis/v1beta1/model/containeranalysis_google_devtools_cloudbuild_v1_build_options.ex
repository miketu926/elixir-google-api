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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions do
  @moduledoc """
  Optional arguments to enable specific features of builds.

  ## Attributes

  *   `automapSubstitutions` (*type:* `boolean()`, *default:* `nil`) - Option to include built-in and custom substitutions as env variables for all build steps.
  *   `defaultLogsBucketBehavior` (*type:* `String.t`, *default:* `nil`) - Optional. Option to specify how default logs buckets are setup.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - Requested disk size for the VM that runs the build. Note that this is *NOT* "disk free"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.
  *   `dynamicSubstitutions` (*type:* `boolean()`, *default:* `nil`) - Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
  *   `env` (*type:* `list(String.t)`, *default:* `nil`) - A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form "KEY=VALUE" for the environment variable "KEY" being given the value "VALUE".
  *   `logStreamingOption` (*type:* `String.t`, *default:* `nil`) - Option to define build log streaming behavior to Cloud Storage.
  *   `logging` (*type:* `String.t`, *default:* `nil`) - Option to specify the logging mode, which determines if and where build logs are stored.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Compute Engine machine type on which to run the build.
  *   `pool` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption.t`, *default:* `nil`) - Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
  *   `requestedVerifyOption` (*type:* `String.t`, *default:* `nil`) - Requested verifiability options.
  *   `secretEnv` (*type:* `list(String.t)`, *default:* `nil`) - A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.
  *   `sourceProvenanceHash` (*type:* `list(String.t)`, *default:* `nil`) - Requested hash for SourceProvenance.
  *   `substitutionOption` (*type:* `String.t`, *default:* `nil`) - Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
  *   `volumes` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume.t)`, *default:* `nil`) - Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
  *   `workerPool` (*type:* `String.t`, *default:* `nil`) - This field deprecated; please use `pool.name` instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automapSubstitutions => boolean() | nil,
          :defaultLogsBucketBehavior => String.t() | nil,
          :diskSizeGb => String.t() | nil,
          :dynamicSubstitutions => boolean() | nil,
          :env => list(String.t()) | nil,
          :logStreamingOption => String.t() | nil,
          :logging => String.t() | nil,
          :machineType => String.t() | nil,
          :pool =>
            GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption.t()
            | nil,
          :requestedVerifyOption => String.t() | nil,
          :secretEnv => list(String.t()) | nil,
          :sourceProvenanceHash => list(String.t()) | nil,
          :substitutionOption => String.t() | nil,
          :volumes =>
            list(
              GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume.t()
            )
            | nil,
          :workerPool => String.t() | nil
        }

  field(:automapSubstitutions)
  field(:defaultLogsBucketBehavior)
  field(:diskSizeGb)
  field(:dynamicSubstitutions)
  field(:env, type: :list)
  field(:logStreamingOption)
  field(:logging)
  field(:machineType)

  field(:pool,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
  )

  field(:requestedVerifyOption)
  field(:secretEnv, type: :list)
  field(:sourceProvenanceHash, type: :list)
  field(:substitutionOption)

  field(:volumes,
    as:
      GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Volume,
    type: :list
  )

  field(:workerPool)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContainerAnalysis.V1beta1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
