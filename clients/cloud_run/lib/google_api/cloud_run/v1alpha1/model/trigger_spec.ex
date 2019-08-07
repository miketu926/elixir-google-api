# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudRun.V1alpha1.Model.TriggerSpec do
  @moduledoc """
  The desired state of the Trigger.

  ## Attributes

  *   `broker` (*type:* `String.t`, *default:* `nil`) - Broker is the broker that this trigger receives events from. If not
      specified, will default to 'default'.

      Not currently supported by Cloud Run.
  *   `filter` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter.t`, *default:* `nil`) - Filter is the filter to apply against all events from the Broker. Only
      events that pass this filter will be sent to the Subscriber.
  *   `importers` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.TriggerImporterSpec.t)`, *default:* `nil`) - Specification of the importers that will provide events to the trigger.
      Note, for Cloud Run, the importers will only be used if a filter is not
      specified.
  *   `subscriber` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.SubscriberSpec.t`, *default:* `nil`) - Subscriber is the addressable that receives events from the Broker that
      pass the Filter. It is required.

      E.g. https://us-central1-myproject.cloudfunctions.net/myfunction or
      /namespaces/my-project/services/my-service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :broker => String.t(),
          :filter => GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter.t(),
          :importers => list(GoogleApi.CloudRun.V1alpha1.Model.TriggerImporterSpec.t()),
          :subscriber => GoogleApi.CloudRun.V1alpha1.Model.SubscriberSpec.t()
        }

  field(:broker)
  field(:filter, as: GoogleApi.CloudRun.V1alpha1.Model.TriggerFilter)
  field(:importers, as: GoogleApi.CloudRun.V1alpha1.Model.TriggerImporterSpec, type: :list)
  field(:subscriber, as: GoogleApi.CloudRun.V1alpha1.Model.SubscriberSpec)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.TriggerSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.TriggerSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
