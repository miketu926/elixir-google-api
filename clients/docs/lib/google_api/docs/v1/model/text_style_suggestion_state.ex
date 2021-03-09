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

defmodule GoogleApi.Docs.V1.Model.TextStyleSuggestionState do
  @moduledoc """
  A mask that indicates which of the fields on the base TextStyle have been changed in this suggestion. For any field set to true, there is a new suggested value.

  ## Attributes

  *   `backgroundColorSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to background_color.
  *   `baselineOffsetSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to baseline_offset.
  *   `boldSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to bold.
  *   `fontSizeSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to font_size.
  *   `foregroundColorSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to foreground_color.
  *   `italicSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to italic.
  *   `linkSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to link.
  *   `smallCapsSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to small_caps.
  *   `strikethroughSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to strikethrough.
  *   `underlineSuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to underline.
  *   `weightedFontFamilySuggested` (*type:* `boolean()`, *default:* `nil`) - Indicates if there was a suggested change to weighted_font_family.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColorSuggested => boolean() | nil,
          :baselineOffsetSuggested => boolean() | nil,
          :boldSuggested => boolean() | nil,
          :fontSizeSuggested => boolean() | nil,
          :foregroundColorSuggested => boolean() | nil,
          :italicSuggested => boolean() | nil,
          :linkSuggested => boolean() | nil,
          :smallCapsSuggested => boolean() | nil,
          :strikethroughSuggested => boolean() | nil,
          :underlineSuggested => boolean() | nil,
          :weightedFontFamilySuggested => boolean() | nil
        }

  field(:backgroundColorSuggested)
  field(:baselineOffsetSuggested)
  field(:boldSuggested)
  field(:fontSizeSuggested)
  field(:foregroundColorSuggested)
  field(:italicSuggested)
  field(:linkSuggested)
  field(:smallCapsSuggested)
  field(:strikethroughSuggested)
  field(:underlineSuggested)
  field(:weightedFontFamilySuggested)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.TextStyleSuggestionState do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.TextStyleSuggestionState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.TextStyleSuggestionState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
