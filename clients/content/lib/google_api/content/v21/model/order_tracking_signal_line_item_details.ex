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

defmodule GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails do
  @moduledoc """
  The line items of the order.

  ## Attributes

  *   `gtin` (*type:* `String.t`, *default:* `nil`) - The Global Trade Item Number.
  *   `lineItemId` (*type:* `String.t`, *default:* `nil`) - Required. The ID for this line item.
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - The manufacturer part number.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - Required. The Content API REST ID of the product, in the form channel:contentLanguage:targetCountry:offerId.
  *   `quantity` (*type:* `String.t`, *default:* `nil`) - Required. The quantity of the line item in the order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gtin => String.t(),
          :lineItemId => String.t(),
          :mpn => String.t(),
          :productId => String.t(),
          :quantity => String.t()
        }

  field(:gtin)
  field(:lineItemId)
  field(:mpn)
  field(:productId)
  field(:quantity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderTrackingSignalLineItemDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
