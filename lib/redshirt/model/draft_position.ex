# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.DraftPosition do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :abbreviation
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :abbreviation => String.t | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.DraftPosition do
  def decode(value, _options) do
    value
  end
end
