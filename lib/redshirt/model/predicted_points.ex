# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.PredictedPoints do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :yardLine,
    :predictedPoints
  ]

  @type t :: %__MODULE__{
    :yardLine => integer() | nil,
    :predictedPoints => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.PredictedPoints do
  def decode(value, _options) do
    value
  end
end
