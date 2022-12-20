# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.GamePpaOffense do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :overall,
    :passing,
    :rushing,
    :firstDown,
    :secondDown,
    :thirdDown
  ]

  @type t :: %__MODULE__{
          :overall => float() | nil,
          :passing => float() | nil,
          :rushing => float() | nil,
          :firstDown => float() | nil,
          :secondDown => float() | nil,
          :thirdDown => float() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.GamePpaOffense do
  def decode(value, _options) do
    value
  end
end
