# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.AdvancedGameStatOffenseStandardDowns do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ppa,
    :successRate,
    :explosiveness
  ]

  @type t :: %__MODULE__{
          :ppa => float() | nil,
          :successRate => float() | nil,
          :explosiveness => float() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.AdvancedGameStatOffenseStandardDowns do
  def decode(value, _options) do
    value
  end
end
