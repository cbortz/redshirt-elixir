# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.RecruitHometownInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :latitude,
    :longitude,
    :countyFips
  ]

  @type t :: %__MODULE__{
          :latitude => float() | nil,
          :longitude => float() | nil,
          :countyFips => String.t() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.RecruitHometownInfo do
  def decode(value, _options) do
    value
  end
end
