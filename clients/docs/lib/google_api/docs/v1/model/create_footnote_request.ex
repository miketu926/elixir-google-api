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

defmodule GoogleApi.Docs.V1.Model.CreateFootnoteRequest do
  @moduledoc """
  Creates a Footnote segment and inserts a new FootnoteReference to it at the given location. The new Footnote segment will contain a space followed by a newline character.

  ## Attributes

  *   `endOfSegmentLocation` (*type:* `GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t`, *default:* `nil`) - Inserts the footnote reference at the end of the document body. Footnote references cannot be inserted inside a header, footer or footnote. Since footnote references can only be inserted in the body, the segment ID field must be empty.
  *   `location` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - Inserts the footnote reference at a specific index in the document. The footnote reference must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table's start index (i.e. between the table and its preceding paragraph). Footnote references cannot be inserted inside an equation, header, footer or footnote. Since footnote references can only be inserted in the body, the segment ID field must be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endOfSegmentLocation => GoogleApi.Docs.V1.Model.EndOfSegmentLocation.t() | nil,
          :location => GoogleApi.Docs.V1.Model.Location.t() | nil
        }

  field(:endOfSegmentLocation, as: GoogleApi.Docs.V1.Model.EndOfSegmentLocation)
  field(:location, as: GoogleApi.Docs.V1.Model.Location)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.CreateFootnoteRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.CreateFootnoteRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.CreateFootnoteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
