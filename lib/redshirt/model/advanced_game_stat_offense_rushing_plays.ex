# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.AdvancedGameStatOffenseRushingPlays do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ppa,
    :totalPPA,
    :successRate,
    :explosiveness
  ]

  @type t :: %__MODULE__{
    :ppa => float() | nil,
    :totalPPA => float() | nil,
    :successRate => float() | nil,
    :explosiveness => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.AdvancedGameStatOffenseRushingPlays do
  def decode(value, _options) do
    value
  end
end
