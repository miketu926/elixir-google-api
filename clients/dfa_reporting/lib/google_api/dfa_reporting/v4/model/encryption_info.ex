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

defmodule GoogleApi.DFAReporting.V4.Model.EncryptionInfo do
  @moduledoc """
  A description of how user IDs are encrypted.

  ## Attributes

  *   `encryptionEntityId` (*type:* `String.t`, *default:* `nil`) - The encryption entity ID. This should match the encryption configuration for ad serving or Data Transfer.
  *   `encryptionEntityType` (*type:* `String.t`, *default:* `nil`) - The encryption entity type. This should match the encryption configuration for ad serving or Data Transfer.
  *   `encryptionSource` (*type:* `String.t`, *default:* `nil`) - Describes whether the encrypted cookie was received from ad serving (the %m macro) or from Data Transfer.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#encryptionInfo".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionEntityId => String.t() | nil,
          :encryptionEntityType => String.t() | nil,
          :encryptionSource => String.t() | nil,
          :kind => String.t() | nil
        }

  field(:encryptionEntityId)
  field(:encryptionEntityType)
  field(:encryptionSource)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.EncryptionInfo do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.EncryptionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.EncryptionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
