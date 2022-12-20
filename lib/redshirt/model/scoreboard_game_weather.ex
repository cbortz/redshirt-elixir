# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.ScoreboardGameWeather do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :temperature,
    :description,
    :windSpeed,
    :windDirection
  ]

  @type t :: %__MODULE__{
          :temperature => float() | nil,
          :description => String.t() | nil,
          :windSpeed => float() | nil,
          :windDirection => float() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.ScoreboardGameWeather do
  def decode(value, _options) do
    value
  end
end
