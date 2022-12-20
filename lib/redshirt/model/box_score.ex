# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScore do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :teams,
    :players
  ]

  @type t :: %__MODULE__{
    :teams => Redshirt.Model.BoxScoreTeams.t | nil,
    :players => Redshirt.Model.BoxScorePlayers.t | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.BoxScore do
  import Redshirt.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:teams, :struct, Redshirt.Model.BoxScoreTeams, options)
    |> deserialize(:players, :struct, Redshirt.Model.BoxScorePlayers, options)
  end
end

