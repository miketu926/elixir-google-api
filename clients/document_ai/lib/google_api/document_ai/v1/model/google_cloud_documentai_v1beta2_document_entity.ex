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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity do
  @moduledoc """
  An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Optional. Confidence of detected Schema entity. Range [0, 1].
  *   `id` (*type:* `String.t`, *default:* `nil`) - Optional. Canonical id. This will be a unique value in the entity list for this document.
  *   `mentionId` (*type:* `String.t`, *default:* `nil`) - Optional. Deprecated. Use `id` field instead.
  *   `mentionText` (*type:* `String.t`, *default:* `nil`) - Optional. Text value in the document e.g. `1600 Amphitheatre Pkwy`. If the entity is not present in the document, this field will be empty.
  *   `nonPresent` (*type:* `boolean()`, *default:* `nil`) - Optional. This attribute indicates that the processing didn't actually identify this entity, but a confidence score was assigned that represent the potential that this could be a false negative. A non-present entity should have an empty mention_text and text_anchor.
  *   `normalizedValue` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.t`, *default:* `nil`) - Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.
  *   `pageAnchor` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.t`, *default:* `nil`) - Optional. Represents the provenance of this entity wrt. the location on the page where it was found.
  *   `properties` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity.t)`, *default:* `nil`) - Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.
  *   `provenance` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentProvenance.t`, *default:* `nil`) - Optional. The history of this annotation.
  *   `redacted` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the entity will be redacted for de-identification purposes.
  *   `textAnchor` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.t`, *default:* `nil`) - Optional. Provenance of the entity. Text anchor indexing into the Document.text.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Entity type from a schema e.g. `Address`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :id => String.t() | nil,
          :mentionId => String.t() | nil,
          :mentionText => String.t() | nil,
          :nonPresent => boolean() | nil,
          :normalizedValue =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.t()
            | nil,
          :pageAnchor =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentPageAnchor.t() | nil,
          :properties =>
            list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity.t())
            | nil,
          :provenance =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentProvenance.t() | nil,
          :redacted => boolean() | nil,
          :textAnchor =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.t() | nil,
          :type => String.t() | nil
        }

  field(:confidence)
  field(:id)
  field(:mentionId)
  field(:mentionText)
  field(:nonPresent)

  field(:normalizedValue,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
  )

  field(:pageAnchor,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentPageAnchor
  )

  field(:properties,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity,
    type: :list
  )

  field(:provenance,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentProvenance
  )

  field(:redacted)

  field(:textAnchor,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor
  )

  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta2DocumentEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
