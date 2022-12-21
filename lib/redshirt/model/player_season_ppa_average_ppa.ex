# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.PlayerSeasonPpaAveragePpa do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :all,
    :pass,
    :rush,
    :firstDown,
    :secondDown,
    :thirdDown,
    :standardDowns,
    :passingDowns
  ]

  @type t :: %__MODULE__{
          :all => float() | nil,
          :pass => float() | nil,
          :rush => float() | nil,
          :firstDown => float() | nil,
          :secondDown => float() | nil,
          :thirdDown => float() | nil,
          :standardDowns => float() | nil,
          :passingDowns => float() | nil
        }

  def model_structure do
    %__MODULE__{}
  end
end
