# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.AdvancedSeasonStatOffenseFieldPosition do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :averageStart,
    :averagePredictedPoints
  ]

  @type t :: %__MODULE__{
          :averageStart => float() | nil,
          :averagePredictedPoints => float() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.AdvancedSeasonStatOffenseFieldPosition do
  def decode(value, _options) do
    value
  end
end
