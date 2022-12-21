# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.Venue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :name,
    :capacity,
    :grass,
    :city,
    :state,
    :zip,
    :country_code,
    :location,
    :elevation,
    :year_constructed,
    :dome,
    :timezone
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :capacity => integer() | nil,
          :grass => boolean() | nil,
          :city => String.t() | nil,
          :state => String.t() | nil,
          :zip => String.t() | nil,
          :country_code => String.t() | nil,
          :location => Redshirt.Model.VenueLocation.t() | nil,
          :elevation => float() | nil,
          :year_constructed => integer() | nil,
          :dome => boolean() | nil,
          :timezone => String.t() | nil
        }

  def model_structure do
    %__MODULE__{
      location: Redshirt.Model.VenueLocation.model_structure()
    }
  end
end
