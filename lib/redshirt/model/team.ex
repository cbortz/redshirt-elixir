# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.Team do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :school,
    :mascot,
    :abbreviation,
    :alt_name_1,
    :alt_name_2,
    :alt_name_3,
    :classification,
    :conference,
    :division,
    :color,
    :alt_color,
    :logos,
    :twitter,
    :location
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :school => String.t() | nil,
          :mascot => String.t() | nil,
          :abbreviation => String.t() | nil,
          :alt_name_1 => String.t() | nil,
          :alt_name_2 => String.t() | nil,
          :alt_name_3 => String.t() | nil,
          :classification => String.t() | nil,
          :conference => String.t() | nil,
          :division => String.t() | nil,
          :color => String.t() | nil,
          :alt_color => String.t() | nil,
          :logos => [String.t()] | nil,
          :twitter => String.t() | nil,
          :location => Redshirt.Model.TeamLocation.t() | nil
        }

  def model_structure do
    %__MODULE__{
      location: Redshirt.Model.TeamLocation.model_structure()
    }
  end
end
