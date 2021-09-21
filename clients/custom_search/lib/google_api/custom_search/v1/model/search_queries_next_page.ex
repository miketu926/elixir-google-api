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

defmodule GoogleApi.CustomSearch.V1.Model.SearchQueriesNextPage do
  @moduledoc """
  Custom search request metadata.

  ## Attributes

  *   `googleHost` (*type:* `String.t`, *default:* `nil`) - Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.
  *   `hq` (*type:* `String.t`, *default:* `nil`) - Appends the specified query terms to the query, as if they were combined with a logical `AND` operator.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The index of the current set of search results into the total set of results, where the index of the first result is 1.
  *   `safe` (*type:* `String.t`, *default:* `nil`) - Specifies the [SafeSearch level](https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels) used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * `"off"`: Disable SafeSearch * `"active"`: Enable SafeSearch
  *   `relatedSite` (*type:* `String.t`, *default:* `nil`) - Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.
  *   `inputEncoding` (*type:* `String.t`, *default:* `nil`) - The character encoding supported for search requests.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language of the search results.
  *   `outputEncoding` (*type:* `String.t`, *default:* `nil`) - The character encoding supported for search results.
  *   `totalResults` (*type:* `String.t`, *default:* `nil`) - Estimated number of total search results. May not be accurate.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Activates or deactivates the automatic filtering of Google search results. See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Valid values for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**: By default, Google applies filtering to all search results to improve the quality of those results.
  *   `linkSite` (*type:* `String.t`, *default:* `nil`) - Specifies that all results should contain a link to a specific URL.
  *   `sort` (*type:* `String.t`, *default:* `nil`) - Specifies that results should be sorted according to the specified expression. For example, sort by date.
  *   `orTerms` (*type:* `String.t`, *default:* `nil`) - Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the [Boolean OR](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) query term for this type of query.
  *   `gl` (*type:* `String.t`, *default:* `nil`) - Boosts search results whose country of origin matches the parameter value. See [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) for a list of valid values. Specifying a `gl` parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.
  *   `siteSearch` (*type:* `String.t`, *default:* `nil`) - Restricts results to URLs from a specified site.
  *   `siteSearchFilter` (*type:* `String.t`, *default:* `nil`) - Specifies whether to include or exclude results from the site named in the `sitesearch` parameter. Supported values are: * `i`: include content from site * `e`: exclude content from site
  *   `imgSize` (*type:* `String.t`, *default:* `nil`) - Restricts results to images of a specified size. Supported values are: * `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `huge` (extra-large)
  *   `fileType` (*type:* `String.t`, *default:* `nil`) - Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future. An up-to-date list can always be found in Google's [file type FAQ](https://support.google.com/webmasters/answer/35287).
  *   `imgType` (*type:* `String.t`, *default:* `nil`) - Restricts results to images of a specified type. Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)
  *   `rights` (*type:* `String.t`, *default:* `nil`) - Filters based on licensing. Supported values include: * `cc_publicdomain` * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`
  *   `disableCnTwTranslation` (*type:* `String.t`, *default:* `nil`) - Enables or disables the [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch) feature. Supported values are: * `0`: enabled (default) * `1`: disabled
  *   `lowRange` (*type:* `String.t`, *default:* `nil`) - Specifies the starting value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.
  *   `excludeTerms` (*type:* `String.t`, *default:* `nil`) - Identifies a word or phrase that should not appear in any documents in the search results.
  *   `imgColorType` (*type:* `String.t`, *default:* `nil`) - Restricts results to images of a specified color type. Supported values are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)
  *   `hl` (*type:* `String.t`, *default:* `nil`) - Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.
  *   `imgDominantColor` (*type:* `String.t`, *default:* `nil`) - Restricts results to images with a specific dominant color. Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`
  *   `startPage` (*type:* `integer()`, *default:* `nil`) - The page number of this set of results, where the page length is set by the `count` property.
  *   `count` (*type:* `integer()`, *default:* `nil`) - Number of search results returned in this set.
  *   `searchTerms` (*type:* `String.t`, *default:* `nil`) - The search terms entered by the user.
  *   `exactTerms` (*type:* `String.t`, *default:* `nil`) - Identifies a phrase that all documents in the search results must contain.
  *   `cx` (*type:* `String.t`, *default:* `nil`) - The identifier of an engine created using the Programmable Search Engine [Control Panel](https://programmablesearchengine.google.com/). This is a custom property not defined in the OpenSearch spec. This parameter is **required**.
  *   `title` (*type:* `String.t`, *default:* `nil`) - A description of the query.
  *   `dateRestrict` (*type:* `String.t`, *default:* `nil`) - Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.
  *   `cr` (*type:* `String.t`, *default:* `nil`) - Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) in the `cr` parameter's value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document's URL. * The geographic location of the web server's IP address. See [Country (cr) Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) for a list of valid values for this parameter.
  *   `searchType` (*type:* `String.t`, *default:* `nil`) - Allowed values are `web` or `image`. If unspecified, results are limited to webpages.
  *   `highRange` (*type:* `String.t`, *default:* `nil`) - Specifies the ending value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleHost => String.t() | nil,
          :hq => String.t() | nil,
          :startIndex => integer() | nil,
          :safe => String.t() | nil,
          :relatedSite => String.t() | nil,
          :inputEncoding => String.t() | nil,
          :language => String.t() | nil,
          :outputEncoding => String.t() | nil,
          :totalResults => String.t() | nil,
          :filter => String.t() | nil,
          :linkSite => String.t() | nil,
          :sort => String.t() | nil,
          :orTerms => String.t() | nil,
          :gl => String.t() | nil,
          :siteSearch => String.t() | nil,
          :siteSearchFilter => String.t() | nil,
          :imgSize => String.t() | nil,
          :fileType => String.t() | nil,
          :imgType => String.t() | nil,
          :rights => String.t() | nil,
          :disableCnTwTranslation => String.t() | nil,
          :lowRange => String.t() | nil,
          :excludeTerms => String.t() | nil,
          :imgColorType => String.t() | nil,
          :hl => String.t() | nil,
          :imgDominantColor => String.t() | nil,
          :startPage => integer() | nil,
          :count => integer() | nil,
          :searchTerms => String.t() | nil,
          :exactTerms => String.t() | nil,
          :cx => String.t() | nil,
          :title => String.t() | nil,
          :dateRestrict => String.t() | nil,
          :cr => String.t() | nil,
          :searchType => String.t() | nil,
          :highRange => String.t() | nil
        }

  field(:googleHost)
  field(:hq)
  field(:startIndex)
  field(:safe)
  field(:relatedSite)
  field(:inputEncoding)
  field(:language)
  field(:outputEncoding)
  field(:totalResults)
  field(:filter)
  field(:linkSite)
  field(:sort)
  field(:orTerms)
  field(:gl)
  field(:siteSearch)
  field(:siteSearchFilter)
  field(:imgSize)
  field(:fileType)
  field(:imgType)
  field(:rights)
  field(:disableCnTwTranslation)
  field(:lowRange)
  field(:excludeTerms)
  field(:imgColorType)
  field(:hl)
  field(:imgDominantColor)
  field(:startPage)
  field(:count)
  field(:searchTerms)
  field(:exactTerms)
  field(:cx)
  field(:title)
  field(:dateRestrict)
  field(:cr)
  field(:searchType)
  field(:highRange)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.SearchQueriesNextPage do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.SearchQueriesNextPage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.SearchQueriesNextPage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
