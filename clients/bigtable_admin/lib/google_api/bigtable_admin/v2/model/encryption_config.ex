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

defmodule GoogleApi.BigtableAdmin.V2.Model.EncryptionConfig do
  @moduledoc """
  Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.

  ## Attributes

  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. Values are of the form `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKeyName => String.t() | nil
        }

  field(:kmsKeyName)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.EncryptionConfig do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.EncryptionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.EncryptionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
