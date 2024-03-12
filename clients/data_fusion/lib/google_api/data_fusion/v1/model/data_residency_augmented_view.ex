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

defmodule GoogleApi.DataFusion.V1.Model.DataResidencyAugmentedView do
  @moduledoc """
  Next tag: 7

  ## Attributes

  *   `crGopoGuris` (*type:* `list(String.t)`, *default:* `nil`) - Cloud resource to Google owned production object mapping in the form of GURIs. The GURIs should be available in DG KB storage/cns tables. This is the preferred way of providing cloud resource mappings. For further details please read go/cloud-resource-monitoring_sig
  *   `crGopoPrefixes` (*type:* `list(String.t)`, *default:* `nil`) - Cloud resource to Google owned production object mapping in the form of prefixes. These should be available in DG KB storage/cns tables. The entity type, which is the part of the string before the first colon in the GURI, must be completely specified in prefix. For details about GURI please read go/guri. For further details about the field please read go/cloud-resource-monitoring_sig.
  *   `serviceData` (*type:* `GoogleApi.DataFusion.V1.Model.ServiceData.t`, *default:* `nil`) - Service-specific data. Only required for pre-determined services. Generally used to bind a Cloud Resource to some a TI container that uniquely specifies a customer. See milestone 2 of DRZ KR8 SIG for more information.
  *   `tpIds` (*type:* `list(String.t)`, *default:* `nil`) - The list of project_id's of the tenant projects in the 'google.com' org which serve the Cloud Resource. See go/drz-mst-sig for more details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crGopoGuris => list(String.t()) | nil,
          :crGopoPrefixes => list(String.t()) | nil,
          :serviceData => GoogleApi.DataFusion.V1.Model.ServiceData.t() | nil,
          :tpIds => list(String.t()) | nil
        }

  field(:crGopoGuris, type: :list)
  field(:crGopoPrefixes, type: :list)
  field(:serviceData, as: GoogleApi.DataFusion.V1.Model.ServiceData)
  field(:tpIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1.Model.DataResidencyAugmentedView do
  def decode(value, options) do
    GoogleApi.DataFusion.V1.Model.DataResidencyAugmentedView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1.Model.DataResidencyAugmentedView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
