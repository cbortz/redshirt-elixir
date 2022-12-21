# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.Player do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :first_name,
    :last_name,
    :team,
    :height,
    :weight,
    :jersey,
    :year,
    :position,
    :home_city,
    :home_state,
    :home_country,
    :home_latitude,
    :home_longitude,
    :home_county_fips,
    :recruit_ids
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :first_name => String.t() | nil,
          :last_name => String.t() | nil,
          :team => String.t() | nil,
          :height => integer() | nil,
          :weight => integer() | nil,
          :jersey => integer() | nil,
          :year => integer() | nil,
          :position => String.t() | nil,
          :home_city => String.t() | nil,
          :home_state => String.t() | nil,
          :home_country => String.t() | nil,
          :home_latitude => float() | nil,
          :home_longitude => float() | nil,
          :home_county_fips => String.t() | nil,
          :recruit_ids => [integer()] | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
