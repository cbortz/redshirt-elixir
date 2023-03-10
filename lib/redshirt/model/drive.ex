# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.Drive do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :offense,
    :offense_conference,
    :defense,
    :defense_conference,
    :game_id,
    :id,
    :drive_number,
    :scoring,
    :start_period,
    :start_yardline,
    :start_yards_to_goal,
    :start_time,
    :end_period,
    :end_yardline,
    :end_yards_to_goal,
    :end_time,
    :plays,
    :yards,
    :drive_result,
    :is_home_offense,
    :start_offense_score,
    :start_defense_score,
    :end_offense_score,
    :end_defense_score
  ]

  @type t :: %__MODULE__{
          :offense => String.t() | nil,
          :offense_conference => String.t() | nil,
          :defense => String.t() | nil,
          :defense_conference => String.t() | nil,
          :game_id => integer() | nil,
          :id => integer() | nil,
          :drive_number => integer() | nil,
          :scoring => boolean() | nil,
          :start_period => integer() | nil,
          :start_yardline => integer() | nil,
          :start_yards_to_goal => integer() | nil,
          :start_time => Redshirt.Model.DriveStartTime.t() | nil,
          :end_period => integer() | nil,
          :end_yardline => integer() | nil,
          :end_yards_to_goal => integer() | nil,
          :end_time => Redshirt.Model.DriveStartTime.t() | nil,
          :plays => integer() | nil,
          :yards => integer() | nil,
          :drive_result => String.t() | nil,
          :is_home_offense => boolean() | nil,
          :start_offense_score => integer() | nil,
          :start_defense_score => integer() | nil,
          :end_offense_score => integer() | nil,
          :end_defense_score => integer() | nil
        }

  def model_structure do
    %__MODULE__{
      start_time: Redshirt.Model.DriveStartTime.model_structure(),
      end_time: Redshirt.Model.DriveStartTime.model_structure()
    }
  end
end
