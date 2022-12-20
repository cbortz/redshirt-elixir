# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScoreTeamsExplosivenessInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :team,
    :overall
  ]

  @type t :: %__MODULE__{
    :team => String.t | nil,
    :overall => Redshirt.Model.BoxScoreTeamsPpaInnerOverall.t | nil
  }
end

defimpl Poison.Decoder, for: Redshirt.Model.BoxScoreTeamsExplosivenessInner do
  import Redshirt.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:overall, :struct, Redshirt.Model.BoxScoreTeamsPpaInnerOverall, options)
  end
end
