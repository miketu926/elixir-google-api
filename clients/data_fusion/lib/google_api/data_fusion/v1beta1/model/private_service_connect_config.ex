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

defmodule GoogleApi.DataFusion.V1beta1.Model.PrivateServiceConnectConfig do
  @moduledoc """
  Configuration for using Private Service Connect to establish connectivity between the Data Fusion consumer project and the corresponding tenant project.

  ## Attributes

  *   `effectiveUnreachableCidrBlock` (*type:* `String.t`, *default:* `nil`) - Output only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block is /25. The format of this field is governed by RFC 4632. Example: 240.0.0.0/25
  *   `networkAttachment` (*type:* `String.t`, *default:* `nil`) - Required. The reference to the network attachment used to establish private connectivity. It will be of the form projects/{project-id}/regions/{region}/networkAttachments/{network-attachment-id}.
  *   `unreachableCidrBlock` (*type:* `String.t`, *default:* `nil`) - Optional. Input only. The CIDR block to which the CDF instance can't route traffic to in the consumer project VPC. The size of this block should be at least /25. This range should not overlap with the primary address range of any subnetwork used by the network attachment. This range can be used for other purposes in the consumer VPC as long as there is no requirement for CDF to reach destinations using these addresses. If this value is not provided, the server chooses a non RFC 1918 address range. The format of this field is governed by RFC 4632. Example: 192.168.0.0/25
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :effectiveUnreachableCidrBlock => String.t() | nil,
          :networkAttachment => String.t() | nil,
          :unreachableCidrBlock => String.t() | nil
        }

  field(:effectiveUnreachableCidrBlock)
  field(:networkAttachment)
  field(:unreachableCidrBlock)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1beta1.Model.PrivateServiceConnectConfig do
  def decode(value, options) do
    GoogleApi.DataFusion.V1beta1.Model.PrivateServiceConnectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1beta1.Model.PrivateServiceConnectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
