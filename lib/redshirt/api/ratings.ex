# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Api.Ratings do
  @moduledoc """
  API calls for all endpoints tagged `Ratings`.
  """

  alias Redshirt.Connection
  import Redshirt.RequestBuilder

  @doc """
  Historical SP+ ratings by conference
  Get average SP+ historical rating data by conference

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Season filter
    - `:conference` (String.t): Conference abbreviation filter

  ### Returns

  - `{:ok, [%ConferenceSpRating{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_conference_sp_ratings(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.ConferenceSpRating.t)} | {:error, Tesla.Env.t}
  def get_conference_sp_ratings(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/ratings/sp/conferences")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.ConferenceSpRating{}]},
      {400, false}
    ])
  end

  @doc """
  Historical Elo ratings
  Elo rating data

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Season filter
    - `:week` (integer()): Maximum week filter
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference filter

  ### Returns

  - `{:ok, [%TeamEloRating{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_elo_ratings(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.TeamEloRating.t)} | {:error, Tesla.Env.t}
  def get_elo_ratings(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :week => :query,
      :team => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/ratings/elo")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.TeamEloRating{}]},
      {400, false}
    ])
  end

  @doc """
  Historical SP+ ratings
  SP+ rating data

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Season filter (required if team not specified)
    - `:team` (String.t): Team filter (required if year not specified)

  ### Returns

  - `{:ok, [%TeamSpRating{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sp_ratings(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.TeamSpRating.t)} | {:error, Tesla.Env.t}
  def get_sp_ratings(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :team => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/ratings/sp")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.TeamSpRating{}]},
      {400, false}
    ])
  end

  @doc """
  Historical SRS ratings
  SRS rating data (requires either a year or team specified)

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Season filter (required if team not specified)
    - `:team` (String.t): Team filter (required if year not specified)
    - `:conference` (String.t): Conference filter

  ### Returns

  - `{:ok, [%TeamSrsRating{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_srs_ratings(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(Redshirt.Model.TeamSrsRating.t)} | {:error, Tesla.Env.t}
  def get_srs_ratings(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :team => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/ratings/srs")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.TeamSrsRating{}]},
      {400, false}
    ])
  end
end