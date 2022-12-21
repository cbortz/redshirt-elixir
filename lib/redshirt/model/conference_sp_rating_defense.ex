# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.ConferenceSpRatingDefense do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :rating,
    :success,
    :explosiveness,
    :rushing,
    :pasing,
    :standardDowns,
    :passingDowns,
    :havoc
  ]

  @type t :: %__MODULE__{
          :rating => float() | nil,
          :success => float() | nil,
          :explosiveness => float() | nil,
          :rushing => float() | nil,
          :pasing => float() | nil,
          :standardDowns => float() | nil,
          :passingDowns => float() | nil,
          :havoc => Redshirt.Model.TeamSpRatingDefenseHavoc.t() | nil
        }

  def model_structure do
    %__MODULE__{
      havoc: Redshirt.Model.TeamSpRatingDefenseHavoc.model_structure()
    }
  end
end
