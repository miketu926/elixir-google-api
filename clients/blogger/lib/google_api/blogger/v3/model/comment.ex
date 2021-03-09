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

defmodule GoogleApi.Blogger.V3.Model.Comment do
  @moduledoc """


  ## Attributes

  *   `author` (*type:* `GoogleApi.Blogger.V3.Model.CommentAuthor.t`, *default:* `nil`) - The author of this Comment.
  *   `blog` (*type:* `GoogleApi.Blogger.V3.Model.CommentBlog.t`, *default:* `nil`) - Data about the blog containing this comment.
  *   `content` (*type:* `String.t`, *default:* `nil`) - The actual content of the comment. May include HTML markup.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The identifier for this resource.
  *   `inReplyTo` (*type:* `GoogleApi.Blogger.V3.Model.CommentInReplyTo.t`, *default:* `nil`) - Data about the comment this is in reply to.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this entry. Always blogger#comment.
  *   `post` (*type:* `GoogleApi.Blogger.V3.Model.CommentPost.t`, *default:* `nil`) - Data about the post containing this comment.
  *   `published` (*type:* `String.t`, *default:* `nil`) - RFC 3339 date-time when this comment was published.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The API REST URL to fetch this resource from.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the comment (only populated for admin users).
  *   `updated` (*type:* `String.t`, *default:* `nil`) - RFC 3339 date-time when this comment was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.Blogger.V3.Model.CommentAuthor.t() | nil,
          :blog => GoogleApi.Blogger.V3.Model.CommentBlog.t() | nil,
          :content => String.t() | nil,
          :id => String.t() | nil,
          :inReplyTo => GoogleApi.Blogger.V3.Model.CommentInReplyTo.t() | nil,
          :kind => String.t() | nil,
          :post => GoogleApi.Blogger.V3.Model.CommentPost.t() | nil,
          :published => String.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil,
          :updated => String.t() | nil
        }

  field(:author, as: GoogleApi.Blogger.V3.Model.CommentAuthor)
  field(:blog, as: GoogleApi.Blogger.V3.Model.CommentBlog)
  field(:content)
  field(:id)
  field(:inReplyTo, as: GoogleApi.Blogger.V3.Model.CommentInReplyTo)
  field(:kind)
  field(:post, as: GoogleApi.Blogger.V3.Model.CommentPost)
  field(:published)
  field(:selfLink)
  field(:status)
  field(:updated)
end

defimpl Poison.Decoder, for: GoogleApi.Blogger.V3.Model.Comment do
  def decode(value, options) do
    GoogleApi.Blogger.V3.Model.Comment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Blogger.V3.Model.Comment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
