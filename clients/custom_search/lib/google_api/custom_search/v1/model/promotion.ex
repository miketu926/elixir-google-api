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

defmodule GoogleApi.CustomSearch.V1.Model.Promotion do
  @moduledoc """
  Promotion result.

  ## Attributes

  *   `bodyLines` (*type:* `list(GoogleApi.CustomSearch.V1.Model.PromotionBodyLines.t)`, *default:* `nil`) - An array of block objects for this promotion.
  *   `displayLink` (*type:* `String.t`, *default:* `nil`) - An abridged version of this search's result URL, e.g. www.example.com.
  *   `htmlTitle` (*type:* `String.t`, *default:* `nil`) - The title of the promotion, in HTML.
  *   `image` (*type:* `GoogleApi.CustomSearch.V1.Model.PromotionImage.t`, *default:* `nil`) - Image belonging to a promotion.
  *   `link` (*type:* `String.t`, *default:* `nil`) - The URL of the promotion.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the promotion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bodyLines => list(GoogleApi.CustomSearch.V1.Model.PromotionBodyLines.t()) | nil,
          :displayLink => String.t() | nil,
          :htmlTitle => String.t() | nil,
          :image => GoogleApi.CustomSearch.V1.Model.PromotionImage.t() | nil,
          :link => String.t() | nil,
          :title => String.t() | nil
        }

  field(:bodyLines, as: GoogleApi.CustomSearch.V1.Model.PromotionBodyLines, type: :list)
  field(:displayLink)
  field(:htmlTitle)
  field(:image, as: GoogleApi.CustomSearch.V1.Model.PromotionImage)
  field(:link)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.Promotion do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.Promotion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.Promotion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
