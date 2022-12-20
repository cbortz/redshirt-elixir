# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.PlayWp do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :gamesId,
    :playId,
    :playText,
    :homeId,
    :home,
    :awayId,
    :away,
    :spread,
    :homeBall,
    :homeScore,
    :awayScore,
    :timeRemaining,
    :yardLine,
    :down,
    :distance,
    :homeWinProb,
    :playNumber
  ]

  @type t :: %__MODULE__{
    :gamesId => integer() | nil,
    :playId => integer() | nil,
    :playText => String.t | nil,
    :homeId => integer() | nil,
    :home => String.t | nil,
    :awayId => integer() | nil,
    :away => String.t | nil,
    :spread => float() | nil,
    :homeBall => boolean() | nil,
    :homeScore => integer() | nil,
    :awayScore => integer() | nil,
    :timeRemaining => integer() | nil,
    :yardLine => integer() | nil,
    :down => integer() | nil,
    :distance => integer() | nil,
    :homeWinProb => float() | nil,
    :playNumber => integer() | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.PlayWp do
  def decode(value, _options) do
    value
  end
end

