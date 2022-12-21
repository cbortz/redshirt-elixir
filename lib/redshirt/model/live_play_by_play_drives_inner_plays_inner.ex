# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.LivePlayByPlayDrivesInnerPlaysInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :homeScore,
    :awayScore,
    :period,
    :clock,
    :wallclock,
    :teamId,
    :team,
    :down,
    :distance,
    :yardsToGoal,
    :yardsGained,
    :playTypeId,
    :playType,
    :epa,
    :garbageTime,
    :success,
    :rushPass,
    :downType,
    :playText
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :homeScore => integer() | nil,
          :awayScore => integer() | nil,
          :period => integer() | nil,
          :clock => String.t() | nil,
          :wallclock => String.t() | nil,
          :teamId => integer() | nil,
          :team => String.t() | nil,
          :down => integer() | nil,
          :distance => integer() | nil,
          :yardsToGoal => integer() | nil,
          :yardsGained => integer() | nil,
          :playTypeId => integer() | nil,
          :playType => String.t() | nil,
          :epa => float() | nil,
          :garbageTime => boolean() | nil,
          :success => boolean() | nil,
          :rushPass => String.t() | nil,
          :downType => String.t() | nil,
          :playText => String.t() | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
