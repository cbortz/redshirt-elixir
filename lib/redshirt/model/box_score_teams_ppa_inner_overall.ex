# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScoreTeamsPpaInnerOverall do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :total,
    :quarter1,
    :quarter2,
    :quarter3,
    :quarter4
  ]

  @type t :: %__MODULE__{
          :total => float() | nil,
          :quarter1 => float() | nil,
          :quarter2 => float() | nil,
          :quarter3 => float() | nil,
          :quarter4 => float() | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
