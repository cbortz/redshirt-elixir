# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.TeamSeasonStat do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :season,
    :team,
    :conference,
    :statName,
    :statValue
  ]

  @type t :: %__MODULE__{
    :season => integer() | nil,
    :team => String.t | nil,
    :conference => String.t | nil,
    :statName => String.t | nil,
    :statValue => integer() | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.TeamSeasonStat do
  def decode(value, _options) do
    value
  end
end

