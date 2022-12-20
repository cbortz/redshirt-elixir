# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.PlayerGame do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :teams
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :teams => [Redshirt.Model.PlayerGameTeamsInner.t()] | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.PlayerGame do
  import Redshirt.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:teams, :list, Redshirt.Model.PlayerGameTeamsInner, options)
  end
end
