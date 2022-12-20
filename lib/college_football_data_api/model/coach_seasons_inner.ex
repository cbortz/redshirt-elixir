# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.CoachSeasonsInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :school,
    :year,
    :games,
    :wins,
    :losses,
    :ties,
    :preseason_rank,
    :postseason_rank,
    :srs,
    :sp_overall,
    :sp_offense,
    :sp_defense
  ]

  @type t :: %__MODULE__{
    :school => String.t | nil,
    :year => String.t | nil,
    :games => integer() | nil,
    :wins => integer() | nil,
    :losses => integer() | nil,
    :ties => integer() | nil,
    :preseason_rank => integer() | nil,
    :postseason_rank => integer() | nil,
    :srs => float() | nil,
    :sp_overall => float() | nil,
    :sp_offense => float() | nil,
    :sp_defense => float() | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.CoachSeasonsInner do
  def decode(value, _options) do
    value
  end
end

