# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.AdvancedSeasonStatOffenseRushingPlays do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :rate,
    :ppa,
    :totalPPA,
    :successRate,
    :explosiveness
  ]

  @type t :: %__MODULE__{
          :rate => float() | nil,
          :ppa => float() | nil,
          :totalPPA => float() | nil,
          :successRate => float() | nil,
          :explosiveness => float() | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
