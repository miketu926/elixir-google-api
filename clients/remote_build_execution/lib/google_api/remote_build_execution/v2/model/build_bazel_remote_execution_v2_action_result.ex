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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult do
  @moduledoc """
  An ActionResult represents the result of an
  Action being run.

  ## Attributes

  *   `executionMetadata` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutedActionMetadata.t`, *default:* `nil`) - The details of the execution that originally produced this result.
  *   `exitCode` (*type:* `integer()`, *default:* `nil`) - The exit code of the command.
  *   `outputDirectories` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory.t)`, *default:* `nil`) - The output directories of the action. For each output directory requested
      in the `output_directories` or `output_paths` field of the Action, if the
      corresponding directory existed after the action completed, a single entry
      will be present in the output list, which will contain the digest of a
      Tree message containing the
      directory tree, and the path equal exactly to the corresponding Action
      output_directories member.

      As an example, suppose the Action had an output directory `a/b/dir` and the
      execution produced the following contents in `a/b/dir`: a file named `bar`
      and a directory named `foo` with an executable file named `baz`. Then,
      output_directory will contain (hashes shortened for readability):

      ```json
      // OutputDirectory proto:
      {
        path: "a/b/dir"
        tree_digest: {
          hash: "4a73bc9d03...",
          size: 55
        }
      }
      // Tree proto with hash "4a73bc9d03..." and size 55:
      {
        root: {
          files: [
            {
              name: "bar",
              digest: {
                hash: "4a73bc9d03...",
                size: 65534
              }
            }
          ],
          directories: [
            {
              name: "foo",
              digest: {
                hash: "4cf2eda940...",
                size: 43
              }
            }
          ]
        }
        children : {
          // (Directory proto with hash "4cf2eda940..." and size 43)
          files: [
            {
              name: "baz",
              digest: {
                hash: "b2c941073e...",
                size: 1294,
              },
              is_executable: true
            }
          ]
        }
      }
      ```
      If an output of the same name as listed in `output_files` of
      the Command was found in `output_directories`, but was not a directory, the
      server will return a FAILED_PRECONDITION.
  *   `outputDirectorySymlinks` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t)`, *default:* `nil`) - The output directories of the action that are symbolic links to other
      directories. Those may be links to other output directories, or input
      directories, or even absolute paths outside of the working directory,
      if the server supports
      SymlinkAbsolutePathStrategy.ALLOWED.
      For each output directory requested in the `output_directories` field of
      the Action, if the directory existed after the action completed, a
      single entry will be present either in this field, or in the
      `output_directories` field, if the directory was not a symbolic link.

      If an output of the same name was found, but was a symbolic link to a file
      instead of a directory, the server will return a FAILED_PRECONDITION.
      If the action does not produce the requested output, then that output
      will be omitted from the list. The server is free to arrange the output
      list as desired; clients MUST NOT assume that the output list is sorted.

      DEPRECATED as of v2.1. Servers that wish to be compatible with v2.0 API
      should still populate this field in addition to `output_symlinks`.
  *   `outputFileSymlinks` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t)`, *default:* `nil`) - The output files of the action that are symbolic links to other files. Those
      may be links to other output files, or input files, or even absolute paths
      outside of the working directory, if the server supports
      SymlinkAbsolutePathStrategy.ALLOWED.
      For each output file requested in the `output_files` or `output_paths`
      field of the Action, if the corresponding file existed after
      the action completed, a single entry will be present either in this field,
      or in the `output_files` field, if the file was not a symbolic link.

      If an output symbolic link of the same name as listed in `output_files` of
      the Command was found, but its target type was not a regular file, the
      server will return a FAILED_PRECONDITION.
      If the action does not produce the requested output, then that output
      will be omitted from the list. The server is free to arrange the output
      list as desired; clients MUST NOT assume that the output list is sorted.

      DEPRECATED as of v2.1. Servers that wish to be compatible with v2.0 API
      should still populate this field in addition to `output_symlinks`.
  *   `outputFiles` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputFile.t)`, *default:* `nil`) - The output files of the action. For each output file requested in the
      `output_files` or `output_paths` field of the Action, if the corresponding
      file existed after the action completed, a single entry will be present
      either in this field, or the `output_file_symlinks` field if the file was
      a symbolic link to another file (`output_symlinks` field after v2.1).

      If an output listed in `output_files` was found, but was a directory rather
      than a regular file, the server will return a FAILED_PRECONDITION.
      If the action does not produce the requested output, then that output
      will be omitted from the list. The server is free to arrange the output
      list as desired; clients MUST NOT assume that the output list is sorted.
  *   `outputSymlinks` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t)`, *default:* `nil`) - New in v2.1: this field will only be populated if the command
      `output_paths` field was used, and not the pre v2.1 `output_files` or
      `output_directories` fields.
      The output paths of the action that are symbolic links to other paths. Those
      may be links to other outputs, or inputs, or even absolute paths
      outside of the working directory, if the server supports
      SymlinkAbsolutePathStrategy.ALLOWED.
      A single entry for each output requested in `output_paths`
      field of the Action, if the corresponding path existed after
      the action completed and was a symbolic link.

      If the action does not produce a requested output, then that output
      will be omitted from the list. The server is free to arrange the output
      list as desired; clients MUST NOT assume that the output list is sorted.
  *   `stderrDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest for a blob containing the standard error of the action, which
      can be retrieved from the
      ContentAddressableStorage.
  *   `stderrRaw` (*type:* `String.t`, *default:* `nil`) - The standard error buffer of the action. The server SHOULD NOT inline
      stderr unless requested by the client in the
      GetActionResultRequest
      message. The server MAY omit inlining, even if requested, and MUST do so if inlining
      would cause the response to exceed message size limits.
  *   `stdoutDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest for a blob containing the standard output of the action, which
      can be retrieved from the
      ContentAddressableStorage.
  *   `stdoutRaw` (*type:* `String.t`, *default:* `nil`) - The standard output buffer of the action. The server SHOULD NOT inline
      stdout unless requested by the client in the
      GetActionResultRequest
      message. The server MAY omit inlining, even if requested, and MUST do so if inlining
      would cause the response to exceed message size limits.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :executionMetadata =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutedActionMetadata.t(),
          :exitCode => integer(),
          :outputDirectories =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory.t()
            ),
          :outputDirectorySymlinks =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t()
            ),
          :outputFileSymlinks =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t()
            ),
          :outputFiles =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputFile.t()
            ),
          :outputSymlinks =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink.t()
            ),
          :stderrDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t(),
          :stderrRaw => String.t(),
          :stdoutDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t(),
          :stdoutRaw => String.t()
        }

  field(:executionMetadata,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutedActionMetadata
  )

  field(:exitCode)

  field(:outputDirectories,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory,
    type: :list
  )

  field(:outputDirectorySymlinks,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink,
    type: :list
  )

  field(:outputFileSymlinks,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink,
    type: :list
  )

  field(:outputFiles,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputFile,
    type: :list
  )

  field(:outputSymlinks,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputSymlink,
    type: :list
  )

  field(:stderrDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:stderrRaw)

  field(:stdoutDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:stdoutRaw)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
