# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.PlayerGameTeamsInnerCategoriesInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :types
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :types => [Redshirt.Model.PlayerGameTeamsInnerCategoriesInnerTypesInner.t()] | nil
        }

  def model_structure do
    %__MODULE__{
      types: [Redshirt.Model.PlayerGameTeamsInnerCategoriesInnerTypesInner.model_structure()]
    }
  end
end
