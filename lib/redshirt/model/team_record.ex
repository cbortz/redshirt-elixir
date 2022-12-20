# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.TeamRecord do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :year,
    :team,
    :conference,
    :division,
    :expectedWins,
    :total,
    :conferenceGames,
    :homeGames,
    :awayGames
  ]

  @type t :: %__MODULE__{
          :year => integer() | nil,
          :team => String.t() | nil,
          :conference => String.t() | nil,
          :division => String.t() | nil,
          :expectedWins => float() | nil,
          :total => Redshirt.Model.TeamRecordTotal.t() | nil,
          :conferenceGames => Redshirt.Model.TeamRecordTotal.t() | nil,
          :homeGames => Redshirt.Model.TeamRecordTotal.t() | nil,
          :awayGames => Redshirt.Model.TeamRecordTotal.t() | nil
        }
end

defimpl Poison.Decoder, for: Redshirt.Model.TeamRecord do
  import Redshirt.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:total, :struct, Redshirt.Model.TeamRecordTotal, options)
    |> deserialize(:conferenceGames, :struct, Redshirt.Model.TeamRecordTotal, options)
    |> deserialize(:homeGames, :struct, Redshirt.Model.TeamRecordTotal, options)
    |> deserialize(:awayGames, :struct, Redshirt.Model.TeamRecordTotal, options)
  end
end
