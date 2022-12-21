# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.ScoreboardGameHomeTeam do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :conference,
    :classification,
    :points
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :conference => String.t() | nil,
          :classification => String.t() | nil,
          :points => integer() | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
