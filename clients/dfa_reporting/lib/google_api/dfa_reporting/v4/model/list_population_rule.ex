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

defmodule GoogleApi.DFAReporting.V4.Model.ListPopulationRule do
  @moduledoc """
  Remarketing List Population Rule.

  ## Attributes

  *   `floodlightActivityId` (*type:* `String.t`, *default:* `nil`) - Floodlight activity ID associated with this rule. This field can be left blank.
  *   `floodlightActivityName` (*type:* `String.t`, *default:* `nil`) - Name of floodlight activity associated with this rule. This is a read-only, auto-generated field.
  *   `listPopulationClauses` (*type:* `list(GoogleApi.DFAReporting.V4.Model.ListPopulationClause.t)`, *default:* `nil`) - Clauses that make up this list population rule. Clauses are joined by ANDs, and the clauses themselves are made up of list population terms which are joined by ORs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floodlightActivityId => String.t() | nil,
          :floodlightActivityName => String.t() | nil,
          :listPopulationClauses =>
            list(GoogleApi.DFAReporting.V4.Model.ListPopulationClause.t()) | nil
        }

  field(:floodlightActivityId)
  field(:floodlightActivityName)

  field(:listPopulationClauses,
    as: GoogleApi.DFAReporting.V4.Model.ListPopulationClause,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.ListPopulationRule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.ListPopulationRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.ListPopulationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
