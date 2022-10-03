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

defmodule GoogleApi.Compute.V1.Model.RouterStatusBgpPeerStatus do
  @moduledoc """


  ## Attributes

  *   `advertisedRoutes` (*type:* `list(GoogleApi.Compute.V1.Model.Route.t)`, *default:* `nil`) - Routes that were advertised to the remote BGP peer
  *   `bfdStatus` (*type:* `GoogleApi.Compute.V1.Model.BfdStatus.t`, *default:* `nil`) - 
  *   `enableIpv6` (*type:* `boolean()`, *default:* `nil`) - Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the local BGP interface.
  *   `ipv6NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv6 address of the local BGP interface.
  *   `linkedVpnTunnel` (*type:* `String.t`, *default:* `nil`) - URL of the VPN tunnel that this BGP peer controls.
  *   `md5AuthEnabled` (*type:* `boolean()`, *default:* `nil`) - Informs whether MD5 authentication is enabled on this BGP peer.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this BGP peer. Unique within the Routers resource.
  *   `numLearnedRoutes` (*type:* `integer()`, *default:* `nil`) - Number of routes learned from the remote BGP Peer.
  *   `peerIpAddress` (*type:* `String.t`, *default:* `nil`) - IP address of the remote BGP interface.
  *   `peerIpv6NexthopAddress` (*type:* `String.t`, *default:* `nil`) - IPv6 address of the remote BGP interface.
  *   `routerApplianceInstance` (*type:* `String.t`, *default:* `nil`) - [Output only] URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance is the peer side of the BGP session.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the BGP session. For a list of possible values for this field, see BGP session states.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the BGP peer: {UP, DOWN}
  *   `statusReason` (*type:* `String.t`, *default:* `nil`) - Indicates why particular status was returned.
  *   `uptime` (*type:* `String.t`, *default:* `nil`) - Time this session has been up. Format: 14 years, 51 weeks, 6 days, 23 hours, 59 minutes, 59 seconds
  *   `uptimeSeconds` (*type:* `String.t`, *default:* `nil`) - Time this session has been up, in seconds. Format: 145
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertisedRoutes => list(GoogleApi.Compute.V1.Model.Route.t()) | nil,
          :bfdStatus => GoogleApi.Compute.V1.Model.BfdStatus.t() | nil,
          :enableIpv6 => boolean() | nil,
          :ipAddress => String.t() | nil,
          :ipv6NexthopAddress => String.t() | nil,
          :linkedVpnTunnel => String.t() | nil,
          :md5AuthEnabled => boolean() | nil,
          :name => String.t() | nil,
          :numLearnedRoutes => integer() | nil,
          :peerIpAddress => String.t() | nil,
          :peerIpv6NexthopAddress => String.t() | nil,
          :routerApplianceInstance => String.t() | nil,
          :state => String.t() | nil,
          :status => String.t() | nil,
          :statusReason => String.t() | nil,
          :uptime => String.t() | nil,
          :uptimeSeconds => String.t() | nil
        }

  field(:advertisedRoutes, as: GoogleApi.Compute.V1.Model.Route, type: :list)
  field(:bfdStatus, as: GoogleApi.Compute.V1.Model.BfdStatus)
  field(:enableIpv6)
  field(:ipAddress)
  field(:ipv6NexthopAddress)
  field(:linkedVpnTunnel)
  field(:md5AuthEnabled)
  field(:name)
  field(:numLearnedRoutes)
  field(:peerIpAddress)
  field(:peerIpv6NexthopAddress)
  field(:routerApplianceInstance)
  field(:state)
  field(:status)
  field(:statusReason)
  field(:uptime)
  field(:uptimeSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterStatusBgpPeerStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterStatusBgpPeerStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterStatusBgpPeerStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
