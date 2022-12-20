# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScoreTeamsHavocInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :team,
    :total,
    :frontSeven,
    :db
  ]

  @type t :: %__MODULE__{
    :team => String.t | nil,
    :total => float() | nil,
    :frontSeven => float() | nil,
    :db => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.BoxScoreTeamsHavocInner do
  def decode(value, _options) do
    value
  end
end
