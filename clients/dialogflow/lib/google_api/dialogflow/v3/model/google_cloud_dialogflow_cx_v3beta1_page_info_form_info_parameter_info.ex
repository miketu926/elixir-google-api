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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo do
  @moduledoc """
  Represents parameter information.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Always present for WebhookRequest. Required for WebhookResponse. The human-readable name of the parameter, unique within the form. This field cannot be modified by the webhook.
  *   `justCollected` (*type:* `boolean()`, *default:* `nil`) - Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the parameter value was just collected on the last conversation turn.
  *   `required` (*type:* `boolean()`, *default:* `nil`) - Optional for both WebhookRequest and WebhookResponse. Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Always present for WebhookRequest. Required for WebhookResponse. The state of the parameter. This field can be set to INVALID by the webhook to invalidate the parameter; other values set by the webhook will be ignored.
  *   `value` (*type:* `any()`, *default:* `nil`) - Optional for both WebhookRequest and WebhookResponse. The value of the parameter. This field can be set by the webhook to change the parameter value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :justCollected => boolean() | nil,
          :required => boolean() | nil,
          :state => String.t() | nil,
          :value => any() | nil
        }

  field(:displayName)
  field(:justCollected)
  field(:required)
  field(:state)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
