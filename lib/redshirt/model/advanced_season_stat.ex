# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.AdvancedSeasonStat do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :season,
    :team,
    :conference,
    :offense,
    :defense
  ]

  @type t :: %__MODULE__{
          :season => integer() | nil,
          :team => String.t() | nil,
          :conference => String.t() | nil,
          :offense => Redshirt.Model.AdvancedSeasonStatOffense.t() | nil,
          :defense => Redshirt.Model.AdvancedSeasonStatOffense.t() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.AdvancedSeasonStat do
  import Redshirt.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:offense, :struct, Redshirt.Model.AdvancedSeasonStatOffense, options)
    |> deserialize(:defense, :struct, Redshirt.Model.AdvancedSeasonStatOffense, options)
  end
end
