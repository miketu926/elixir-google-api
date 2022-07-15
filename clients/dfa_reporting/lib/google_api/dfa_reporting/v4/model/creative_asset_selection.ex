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

defmodule GoogleApi.DFAReporting.V4.Model.CreativeAssetSelection do
  @moduledoc """
  Encapsulates the list of rules for asset selection and a default asset in case none of the rules match. Applicable to INSTREAM_VIDEO creatives.

  ## Attributes

  *   `defaultAssetId` (*type:* `String.t`, *default:* `nil`) - A creativeAssets[].id. This should refer to one of the parent assets in this creative, and will be served if none of the rules match. This is a required field.
  *   `rules` (*type:* `list(GoogleApi.DFAReporting.V4.Model.Rule.t)`, *default:* `nil`) - Rules determine which asset will be served to a viewer. Rules will be evaluated in the order in which they are stored in this list. This list must contain at least one rule. Applicable to INSTREAM_VIDEO creatives.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultAssetId => String.t() | nil,
          :rules => list(GoogleApi.DFAReporting.V4.Model.Rule.t()) | nil
        }

  field(:defaultAssetId)
  field(:rules, as: GoogleApi.DFAReporting.V4.Model.Rule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.CreativeAssetSelection do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.CreativeAssetSelection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.CreativeAssetSelection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
