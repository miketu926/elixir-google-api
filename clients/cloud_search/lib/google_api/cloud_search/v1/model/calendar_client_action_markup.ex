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

defmodule GoogleApi.CloudSearch.V1.Model.CalendarClientActionMarkup do
  @moduledoc """


  ## Attributes

  *   `addAttachmentsActionMarkup` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup.t`, *default:* `nil`) - An action that adds attachments to the Google Calendar event.
  *   `editAttendeesActionMarkup` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup.t`, *default:* `nil`) - An action that adds attendees to the Google Calendar event.
  *   `editConferenceDataActionMarkup` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup.t`, *default:* `nil`) - An action that adds conference data to the Google Calendar event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addAttachmentsActionMarkup =>
            GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup.t()
            | nil,
          :editAttendeesActionMarkup =>
            GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup.t()
            | nil,
          :editConferenceDataActionMarkup =>
            GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup.t()
            | nil
        }

  field(:addAttachmentsActionMarkup,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupAddAttachmentsActionMarkup
  )

  field(:editAttendeesActionMarkup,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditAttendeesActionMarkup
  )

  field(:editConferenceDataActionMarkup,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupEditConferenceDataActionMarkup
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.CalendarClientActionMarkup do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.CalendarClientActionMarkup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.CalendarClientActionMarkup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
