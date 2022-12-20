# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.GamePpa do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :gameId,
    :season,
    :week,
    :team,
    :conference,
    :opponent,
    :offense,
    :defense
  ]

  @type t :: %__MODULE__{
          :gameId => integer() | nil,
          :season => integer() | nil,
          :week => integer() | nil,
          :team => String.t() | nil,
          :conference => String.t() | nil,
          :opponent => String.t() | nil,
          :offense => Redshirt.Model.GamePpaOffense.t() | nil,
          :defense => Redshirt.Model.GamePpaOffense.t() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.GamePpa do
  import Redshirt.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:offense, :struct, Redshirt.Model.GamePpaOffense, options)
    |> deserialize(:defense, :struct, Redshirt.Model.GamePpaOffense, options)
  end
end
