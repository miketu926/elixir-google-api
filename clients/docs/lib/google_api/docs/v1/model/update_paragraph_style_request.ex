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

defmodule GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest do
  @moduledoc """
  Update the styling of all paragraphs that overlap with the given range.

  ## Attributes

  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `paragraph_style` is implied and should not be specified. For example, to update the paragraph style's alignment property, set `fields` to `"alignment"`. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
  *   `paragraphStyle` (*type:* `GoogleApi.Docs.V1.Model.ParagraphStyle.t`, *default:* `nil`) - The styles to set on the paragraphs. Certain paragraph style changes may cause other changes in order to mirror the behavior of the Docs editor. See the documentation of ParagraphStyle for more information.
  *   `range` (*type:* `GoogleApi.Docs.V1.Model.Range.t`, *default:* `nil`) - The range overlapping the paragraphs to style.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t() | nil,
          :paragraphStyle => GoogleApi.Docs.V1.Model.ParagraphStyle.t() | nil,
          :range => GoogleApi.Docs.V1.Model.Range.t() | nil
        }

  field(:fields)
  field(:paragraphStyle, as: GoogleApi.Docs.V1.Model.ParagraphStyle)
  field(:range, as: GoogleApi.Docs.V1.Model.Range)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.UpdateParagraphStyleRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
