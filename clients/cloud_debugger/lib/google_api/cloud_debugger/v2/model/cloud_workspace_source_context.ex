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

defmodule GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceSourceContext do
  @moduledoc """
  A CloudWorkspaceSourceContext denotes a workspace at a particular snapshot.

  ## Attributes

  *   `snapshotId` (*type:* `String.t`, *default:* `nil`) - The ID of the snapshot. An empty snapshot_id refers to the most recent snapshot.
  *   `workspaceId` (*type:* `GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId.t`, *default:* `nil`) - The ID of the workspace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :snapshotId => String.t() | nil,
          :workspaceId => GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId.t() | nil
        }

  field(:snapshotId)
  field(:workspaceId, as: GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceSourceContext do
  def decode(value, options) do
    GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceSourceContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDebugger.V2.Model.CloudWorkspaceSourceContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
