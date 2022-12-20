# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.PregameWp do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :season,
    :seasonType,
    :week,
    :gameId,
    :homeTeam,
    :awayTeam,
    :spread,
    :homeWinProb
  ]

  @type t :: %__MODULE__{
    :season => integer() | nil,
    :seasonType => String.t | nil,
    :week => integer() | nil,
    :gameId => integer() | nil,
    :homeTeam => String.t | nil,
    :awayTeam => String.t | nil,
    :spread => float() | nil,
    :homeWinProb => float() | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.PregameWp do
  def decode(value, _options) do
    value
  end
end

