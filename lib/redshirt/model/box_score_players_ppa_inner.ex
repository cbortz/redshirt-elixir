# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScorePlayersPpaInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :player,
    :team,
    :position,
    :average,
    :cumulative
  ]

  @type t :: %__MODULE__{
          :player => String.t() | nil,
          :team => String.t() | nil,
          :position => String.t() | nil,
          :average => Redshirt.Model.BoxScorePlayersPpaInnerAverage.t() | nil,
          :cumulative => Redshirt.Model.BoxScorePlayersPpaInnerAverage.t() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.BoxScorePlayersPpaInner do
  import Redshirt.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:average, :struct, Redshirt.Model.BoxScorePlayersPpaInnerAverage, options)
    |> deserialize(:cumulative, :struct, Redshirt.Model.BoxScorePlayersPpaInnerAverage, options)
  end
end
