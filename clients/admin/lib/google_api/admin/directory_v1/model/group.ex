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

defmodule GoogleApi.Admin.Directory_v1.Model.Group do
  @moduledoc """
  Google Groups provide your users the ability to send messages to groups of people using the group's email address. For more information about common tasks, see the [Developer's Guide](https://developers.google.com/admin-sdk/directory/v1/guides/manage-groups). For information about other types of groups, see the [Cloud Identity Groups API documentation](https://cloud.google.com/identity/docs/groups). Note: The user calling the API (or being impersonated by a service account) must have an assigned [role](https://developers.google.com/admin-sdk/directory/v1/guides/manage-roles) that includes Admin API Groups permissions, such as Super Admin or Groups Admin.

  ## Attributes

  *   `adminCreated` (*type:* `boolean()`, *default:* `nil`) - Read-only. Value is `true` if this group was created by an administrator rather than a user.
  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - Read-only. The list of a group's alias email addresses. To add, update, or remove a group's aliases, use the `groups.aliases` methods. If edited in a group's POST or PUT request, the edit is ignored.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An extended description to help users determine the purpose of a group. For example, you can include information about who should join the group, the types of messages to send to the group, links to FAQs about the group, or related groups. Maximum length is `4,096` characters.
  *   `directMembersCount` (*type:* `String.t`, *default:* `nil`) - The number of users that are direct members of the group. If a group is a member (child) of this group (the parent), members of the child group are not counted in the `directMembersCount` property of the parent group.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The group's email address. If your account has multiple domains, select the appropriate domain for the email address. The `email` must be unique. This property is required when creating a group. Group email addresses are subject to the same character usage rules as usernames, see the [help center](https://support.google.com/a/answer/9193374) for details.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Read-only. The unique ID of a group. A group `id` can be used as a group request URI's `groupKey`.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#group`) - The type of the API resource. For Groups resources, the value is `admin#directory#group`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The group's display name.
  *   `nonEditableAliases` (*type:* `list(String.t)`, *default:* `nil`) - Read-only. The list of the group's non-editable alias email addresses that are outside of the account's primary domain or subdomains. These are functioning email addresses used by the group. This is a read-only property returned in the API's response for a group. If edited in a group's POST or PUT request, the edit is ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminCreated => boolean() | nil,
          :aliases => list(String.t()) | nil,
          :description => String.t() | nil,
          :directMembersCount => String.t() | nil,
          :email => String.t() | nil,
          :etag => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :nonEditableAliases => list(String.t()) | nil
        }

  field(:adminCreated)
  field(:aliases, type: :list)
  field(:description)
  field(:directMembersCount)
  field(:email)
  field(:etag)
  field(:id)
  field(:kind)
  field(:name)
  field(:nonEditableAliases, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Group do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Group.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Group do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
