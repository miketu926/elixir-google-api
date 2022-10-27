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

defmodule GoogleApi.Jobs.V4.Model.Company do
  @moduledoc """
  A Company resource represents a company in the service. A company is the entity that owns job postings, that is, the hiring entity responsible for employing applicants for the job position.

  ## Attributes

  *   `careerSiteUri` (*type:* `String.t`, *default:* `nil`) - The URI to employer's career site or careers page on the employer's web site, for example, "https://careers.google.com".
  *   `derivedInfo` (*type:* `GoogleApi.Jobs.V4.Model.CompanyDerivedInfo.t`, *default:* `nil`) - Output only. Derived details about the company.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the company, for example, "Google LLC".
  *   `eeoText` (*type:* `String.t`, *default:* `nil`) - Equal Employment Opportunity legal disclaimer text to be associated with all jobs, and typically to be displayed in all roles. The maximum number of allowed characters is 500.
  *   `externalId` (*type:* `String.t`, *default:* `nil`) - Required. Client side company identifier, used to uniquely identify the company. The maximum number of allowed characters is 255.
  *   `headquartersAddress` (*type:* `String.t`, *default:* `nil`) - The street address of the company's main headquarters, which may be different from the job location. The service attempts to geolocate the provided address, and populates a more specific location wherever possible in DerivedInfo.headquarters_location.
  *   `hiringAgency` (*type:* `boolean()`, *default:* `nil`) - Set to true if it is the hiring agency that post jobs for other employers. Defaults to false if not provided.
  *   `imageUri` (*type:* `String.t`, *default:* `nil`) - A URI that hosts the employer's company logo.
  *   `keywordSearchableJobCustomAttributes` (*type:* `list(String.t)`, *default:* `nil`) - This field is deprecated. Please set the searchability of the custom attribute in the Job.custom_attributes going forward. A list of keys of filterable Job.custom_attributes, whose corresponding `string_values` are used in keyword searches. Jobs with `string_values` under these specified field keys are returned if any of the values match the search keyword. Custom field values with parenthesis, brackets and special symbols are not searchable as-is, and those keyword queries must be surrounded by quotes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for example, "projects/foo/tenants/bar/companies/baz".
  *   `size` (*type:* `String.t`, *default:* `nil`) - The employer's company size.
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether a company is flagged to be suspended from public availability by the service when job content appears suspicious, abusive, or spammy.
  *   `websiteUri` (*type:* `String.t`, *default:* `nil`) - The URI representing the company's primary web site or home page, for example, "https://www.google.com". The maximum number of allowed characters is 255.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :careerSiteUri => String.t() | nil,
          :derivedInfo => GoogleApi.Jobs.V4.Model.CompanyDerivedInfo.t() | nil,
          :displayName => String.t() | nil,
          :eeoText => String.t() | nil,
          :externalId => String.t() | nil,
          :headquartersAddress => String.t() | nil,
          :hiringAgency => boolean() | nil,
          :imageUri => String.t() | nil,
          :keywordSearchableJobCustomAttributes => list(String.t()) | nil,
          :name => String.t() | nil,
          :size => String.t() | nil,
          :suspended => boolean() | nil,
          :websiteUri => String.t() | nil
        }

  field(:careerSiteUri)
  field(:derivedInfo, as: GoogleApi.Jobs.V4.Model.CompanyDerivedInfo)
  field(:displayName)
  field(:eeoText)
  field(:externalId)
  field(:headquartersAddress)
  field(:hiringAgency)
  field(:imageUri)
  field(:keywordSearchableJobCustomAttributes, type: :list)
  field(:name)
  field(:size)
  field(:suspended)
  field(:websiteUri)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.Company do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.Company.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.Company do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
