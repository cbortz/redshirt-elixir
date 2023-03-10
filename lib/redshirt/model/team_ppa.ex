# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.TeamPpa do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :season,
    :team,
    :conference,
    :offense,
    :defense
  ]

  @type t :: %__MODULE__{
          :season => integer() | nil,
          :team => String.t() | nil,
          :conference => String.t() | nil,
          :offense => Redshirt.Model.TeamPpaOffense.t() | nil,
          :defense => Redshirt.Model.TeamPpaOffense.t() | nil
        }

  def model_structure do
    %__MODULE__{
      offense: Redshirt.Model.TeamPpaOffense.model_structure(),
      defense: Redshirt.Model.TeamPpaOffense.model_structure()
    }
  end
end
