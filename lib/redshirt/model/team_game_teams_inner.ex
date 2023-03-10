# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.TeamGameTeamsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :school,
    :conference,
    :homeAway,
    :points,
    :stats
  ]

  @type t :: %__MODULE__{
          :school => String.t() | nil,
          :conference => String.t() | nil,
          :homeAway => String.t() | nil,
          :points => integer() | nil,
          :stats => [Redshirt.Model.TeamGameTeamsInnerStatsInner.t()] | nil
        }

  def model_structure do
    %__MODULE__{
      stats: [Redshirt.Model.TeamGameTeamsInnerStatsInner.model_structure()]
    }
  end
end
