# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScoreTeamsFieldPositionInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :team,
    :averageStart,
    :averageStartingPredictedPoints
  ]

  @type t :: %__MODULE__{
    :team => String.t | nil,
    :averageStart => float() | nil,
    :averageStartingPredictedPoints => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.BoxScoreTeamsFieldPositionInner do
  def decode(value, _options) do
    value
  end
end
