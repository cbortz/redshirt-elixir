# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.PortalPlayer do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :season,
    :firstName,
    :lastName,
    :position,
    :origin,
    :destination,
    :transferDate,
    :rating,
    :stars,
    :eligibility
  ]

  @type t :: %__MODULE__{
    :season => integer() | nil,
    :firstName => String.t | nil,
    :lastName => String.t | nil,
    :position => String.t | nil,
    :origin => String.t | nil,
    :destination => String.t | nil,
    :transferDate => String.t | nil,
    :rating => float() | nil,
    :stars => integer() | nil,
    :eligibility => String.t | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.PortalPlayer do
  def decode(value, _options) do
    value
  end
end

