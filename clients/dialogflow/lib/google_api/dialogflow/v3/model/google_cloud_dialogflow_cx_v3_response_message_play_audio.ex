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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio do
  @moduledoc """
  Specifies an audio clip to be played by the client as part of the response.

  ## Attributes

  *   `allowPlaybackInterruption` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  *   `audioUri` (*type:* `String.t`, *default:* `nil`) - Required. URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowPlaybackInterruption => boolean() | nil,
          :audioUri => String.t() | nil
        }

  field(:allowPlaybackInterruption)
  field(:audioUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
