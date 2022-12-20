# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.TeamEloRating do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :year,
    :team,
    :conference,
    :elo
  ]

  @type t :: %__MODULE__{
    :year => integer() | nil,
    :team => String.t | nil,
    :conference => String.t | nil,
    :elo => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.TeamEloRating do
  def decode(value, _options) do
    value
  end
end
