# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.TeamSpRatingSpecialTeams do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :rating
  ]

  @type t :: %__MODULE__{
    :rating => float() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.TeamSpRatingSpecialTeams do
  def decode(value, _options) do
    value
  end
end
