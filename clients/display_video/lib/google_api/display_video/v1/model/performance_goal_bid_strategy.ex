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

defmodule GoogleApi.DisplayVideo.V1.Model.PerformanceGoalBidStrategy do
  @moduledoc """
  A strategy that automatically adjusts the bid to meet or beat a specified
  performance goal.

  ## Attributes

  *   `maxAverageCpmBidAmountMicros` (*type:* `String.t`, *default:* `nil`) - The maximum average CPM that may be bid, in micros of the advertiser's
      currency. Must be greater than or equal to a billable unit of the given
      currency. Not applicable when
      performance_goal_type
      is set to `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`.

      For example, 1500000 represents 1.5 standard units of the currency.
  *   `performanceGoalAmountMicros` (*type:* `String.t`, *default:* `nil`) - Required. The performance goal the bidding strategy will attempt to
      meet or beat, in micros of the advertiser's currency or in micro of the
      ROAS (Return On Advertising Spend) value which is also based on
      advertiser's currency. Must be greater than or equal to a billable unit of
      the given currency and smaller or equal to upper bounds. Each
      performance_goal_type
      has its upper bound:

      * when
      performance_goal_type
      is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`,
      upper bound is 10000.00 USD.
      * when
      performance_goal_type
      is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`,
      upper bound is 1000.00 USD.
      * when
      performance_goal_type
      is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, upper bound is
      1000.00 USD.
      * when
      performance_goal_type
      is `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`, upper bound is
      1000.00 and lower bound is 0.01.

      Example: If set to
      `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`, the bid price will
      be based on the probability that each available impression will be
      viewable. For example, if viewable CPM target is $2 and an impression is
      40% likely to be viewable, the bid price will be $0.80 CPM (40% of $2).

      For example, 1500000 represents 1.5 standard units of the currency or ROAS
      value.
  *   `performanceGoalType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the performance goal that the bidding strategy
      will try to meet or beat.

      For line item level usage, the value must be one of:

      * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`
      * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`
      * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_VIEWABLE_CPM`
      * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CUSTOM_ALGO`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxAverageCpmBidAmountMicros => String.t(),
          :performanceGoalAmountMicros => String.t(),
          :performanceGoalType => String.t()
        }

  field(:maxAverageCpmBidAmountMicros)
  field(:performanceGoalAmountMicros)
  field(:performanceGoalType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.PerformanceGoalBidStrategy do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.PerformanceGoalBidStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.PerformanceGoalBidStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
