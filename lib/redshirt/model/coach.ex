# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.Coach do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :first_name,
    :last_name,
    :hire_date,
    :seasons
  ]

  @type t :: %__MODULE__{
          :first_name => String.t() | nil,
          :last_name => String.t() | nil,
          :hire_date => String.t() | nil,
          :seasons => [Redshirt.Model.CoachSeasonsInner.t()] | nil
        }

  def model_structure do
    %__MODULE__{
      seasons: [Redshirt.Model.CoachSeasonsInner.model_structure()]
    }
  end
end
