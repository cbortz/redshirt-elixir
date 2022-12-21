# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Model.BoxScoreTeamsPpaInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :team,
    :plays,
    :overall,
    :passing,
    :rushing
  ]

  @type t :: %__MODULE__{
          :team => String.t() | nil,
          :plays => float() | nil,
          :overall => Redshirt.Model.BoxScoreTeamsPpaInnerOverall.t() | nil,
          :passing => Redshirt.Model.BoxScoreTeamsPpaInnerOverall.t() | nil,
          :rushing => Redshirt.Model.BoxScoreTeamsPpaInnerOverall.t() | nil
        }

  def model_structure do
    %__MODULE__{
      overall: Redshirt.Model.BoxScoreTeamsPpaInnerOverall.model_structure(),
      passing: Redshirt.Model.BoxScoreTeamsPpaInnerOverall.model_structure(),
      rushing: Redshirt.Model.BoxScoreTeamsPpaInnerOverall.model_structure()
    }
  end
end
