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

defmodule GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest do
  @moduledoc """
  Updates the TableColumnProperties of columns in a table.

  ## Attributes

  *   `columnIndices` (*type:* `list(integer())`, *default:* `nil`) - The list of zero-based column indices whose property should be updated. If no indices are specified, all columns will be updated.
  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `tableColumnProperties` is implied and should not be specified. A single `"*"` can be used as short-hand for listing every field. For example to update the column width, set `fields` to `"width"`.
  *   `tableColumnProperties` (*type:* `GoogleApi.Docs.V1.Model.TableColumnProperties.t`, *default:* `nil`) - The table column properties to update. If the value of `table_column_properties#width` is less than 5 points (5/72 inch), a 400 bad request error is returned.
  *   `tableStartLocation` (*type:* `GoogleApi.Docs.V1.Model.Location.t`, *default:* `nil`) - The location where the table starts in the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnIndices => list(integer()) | nil,
          :fields => String.t() | nil,
          :tableColumnProperties => GoogleApi.Docs.V1.Model.TableColumnProperties.t() | nil,
          :tableStartLocation => GoogleApi.Docs.V1.Model.Location.t() | nil
        }

  field(:columnIndices, type: :list)
  field(:fields)
  field(:tableColumnProperties, as: GoogleApi.Docs.V1.Model.TableColumnProperties)
  field(:tableStartLocation, as: GoogleApi.Docs.V1.Model.Location)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.UpdateTableColumnPropertiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
