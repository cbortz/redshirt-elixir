# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Model.TeamGameTeamsInnerStatsInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :category,
    :stat
  ]

  @type t :: %__MODULE__{
    :category => String.t | nil,
    :stat => String.t | nil
  }
end

defimpl Poison.Decoder, for: CollegeFootballDataAPI.Model.TeamGameTeamsInnerStatsInner do
  def decode(value, _options) do
    value
  end
end

