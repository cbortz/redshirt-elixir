# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Api.Recruiting do
  @moduledoc """
  API calls for all endpoints tagged `Recruiting`.
  """

  alias Redshirt.Connection
  import Redshirt.RequestBuilder

  @doc """
  Recruit position group ratings
  Gets a list of aggregated statistics by team and position grouping

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:startYear` (integer()): Starting year
    - `:endYear` (integer()): Ending year
    - `:team` (String.t): Team filter
    - `:conference` (String.t): conference filter

  ### Returns

  - `{:ok, [%PositionGroupRecruitingRating{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recruiting_groups(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.PositionGroupRecruitingRating.t)} | {:error, Tesla.Env.t}
  def get_recruiting_groups(connection, opts \\ []) do
    optional_params = %{
      :startYear => :query,
      :endYear => :query,
      :team => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recruiting/groups")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.PositionGroupRecruitingRating{}]},
      {400, false}
    ])
  end

  @doc """
  Player recruiting ratings and rankings
  Get player recruiting rankings and data. Requires either a year or team to be specified.

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Recruiting class year (required if team no specified)
    - `:classification` (String.t): Type of recruit (HighSchool, JUCO, PrepSchool)
    - `:position` (String.t): Position abbreviation filter
    - `:state` (String.t): State or province abbreviation filter
    - `:team` (String.t): Committed team filter (required if year not specified)

  ### Returns

  - `{:ok, [%Recruit{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recruiting_players(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.Recruit.t)} | {:error, Tesla.Env.t}
  def get_recruiting_players(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :classification => :query,
      :position => :query,
      :state => :query,
      :team => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recruiting/players")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.Recruit{}]},
      {400, false}
    ])
  end

  @doc """
  Team recruiting rankings and ratings
  Team recruiting rankings

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Recruiting class year
    - `:team` (String.t): Team filter

  ### Returns

  - `{:ok, [%TeamRecruitingRank{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_recruiting_teams(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.TeamRecruitingRank.t)} | {:error, Tesla.Env.t}
  def get_recruiting_teams(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :team => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recruiting/teams")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.TeamRecruitingRank{}]},
      {400, false}
    ])
  end
end