# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.DraftPickHometownInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :city,
    :state,
    :country,
    :latitude,
    :longitude,
    :countryFips
  ]

  @type t :: %__MODULE__{
    :city => String.t | nil,
    :state => String.t | nil,
    :country => String.t | nil,
    :latitude => float() | nil,
    :longitude => float() | nil,
    :countryFips => integer() | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.DraftPickHometownInfo do
  def decode(value, _options) do
    value
  end
end
