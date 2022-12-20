# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Api.Games do
  @moduledoc """
  API calls for all endpoints tagged `Games`.
  """

  alias CollegeFootballDataAPI.Connection
  import CollegeFootballDataAPI.RequestBuilder

  @doc """
  Advanced box scores
  Get advanced box score data

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `game_id` (integer()): Game id parameters
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, CollegeFootballDataAPI.Model.BoxScore.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_advanced_box_score(Tesla.Env.client, integer(), keyword()) :: {:ok, CollegeFootballDataAPI.Model.BoxScore.t} | {:error, Tesla.Env.t}
  def get_advanced_box_score(connection, game_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/game/box/advanced")
      |> add_param(:query, :gameId, game_id)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %CollegeFootballDataAPI.Model.BoxScore{}}
    ])
  end

  @doc """
  Season calendar
  Get calendar of weeks by season

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `year` (integer()): Year filter
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%Week{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_calendar(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.Week.t)} | {:error, Tesla.Env.t}
  def get_calendar(connection, year, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/calendar")
      |> add_param(:query, :year, year)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.Week{}]},
      {400, false}
    ])
  end

  @doc """
  Game media information and schedules
  Game media information (TV, radio, etc)

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `year` (integer()): Year filter
  - `opts` (keyword): Optional parameters
    - `:week` (integer()): Week filter
    - `:seasonType` (String.t): Season type filter (regular, postseason, or both)
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference filter
    - `:mediaType` (String.t): Media type filter (tv, radio, web, ppv, or mobile)
    - `:classification` (String.t): Division classification filter (fbs/fcs/ii/iii)

  ### Returns

  - `{:ok, [%GameMedia{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_game_media(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.GameMedia.t)} | {:error, Tesla.Env.t}
  def get_game_media(connection, year, opts \\ []) do
    optional_params = %{
      :week => :query,
      :seasonType => :query,
      :team => :query,
      :conference => :query,
      :mediaType => :query,
      :classification => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/games/media")
      |> add_param(:query, :year, year)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.GameMedia{}]},
      {400, false}
    ])
  end

  @doc """
  Game weather information (Patreon only)
  Weather information for the hour of kickoff

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:gameId` (integer()): Game id filter (required if no year)
    - `:year` (integer()): Year filter (required if no game id)
    - `:week` (integer()): Week filter
    - `:seasonType` (String.t): Season type filter (regular, postseason, or both)
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference filter
    - `:classification` (String.t): Division classification filter (fbs/fcs/ii/iii)

  ### Returns

  - `{:ok, [%GameWeather{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_game_weather(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.GameWeather.t)} | {:error, Tesla.Env.t}
  def get_game_weather(connection, opts \\ []) do
    optional_params = %{
      :gameId => :query,
      :year => :query,
      :week => :query,
      :seasonType => :query,
      :team => :query,
      :conference => :query,
      :classification => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/games/weather")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.GameWeather{}]},
      {400, false}
    ])
  end

  @doc """
  Games and results
  Get game results

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `year` (integer()): Year/season filter for games
  - `opts` (keyword): Optional parameters
    - `:week` (integer()): Week filter
    - `:seasonType` (String.t): Season type filter (regular or postseason)
    - `:team` (String.t): Team
    - `:home` (String.t): Home team filter
    - `:away` (String.t): Away team filter
    - `:conference` (String.t): Conference abbreviation filter
    - `:division` (String.t): Division classification filter (fbs/fcs/ii/iii)
    - `:id` (integer()): id filter for querying a single game

  ### Returns

  - `{:ok, [%Game{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_games(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.Game.t)} | {:error, Tesla.Env.t}
  def get_games(connection, year, opts \\ []) do
    optional_params = %{
      :week => :query,
      :seasonType => :query,
      :team => :query,
      :home => :query,
      :away => :query,
      :conference => :query,
      :division => :query,
      :id => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/games")
      |> add_param(:query, :year, year)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.Game{}]},
      {400, false}
    ])
  end

  @doc """
  Player game stats
  Player stats broken down by game

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `year` (integer()): Year/season filter for games
  - `opts` (keyword): Optional parameters
    - `:week` (integer()): Week filter
    - `:seasonType` (String.t): Season type filter (regular or postseason)
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference abbreviation filter
    - `:category` (String.t): Category filter (e.g defensive)
    - `:gameId` (integer()): Game id filter

  ### Returns

  - `{:ok, [%PlayerGame{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_player_game_stats(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.PlayerGame.t)} | {:error, Tesla.Env.t}
  def get_player_game_stats(connection, year, opts \\ []) do
    optional_params = %{
      :week => :query,
      :seasonType => :query,
      :team => :query,
      :conference => :query,
      :category => :query,
      :gameId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/games/players")
      |> add_param(:query, :year, year)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.PlayerGame{}]},
      {400, false}
    ])
  end

  @doc """
  Live game results (Patreon only)
  Get live game results

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:classification` (String.t): Classification filter (fbs, fcs, ii, or iii). Defaults to fbs.
    - `:conference` (String.t): Conference abbreviation filter.

  ### Returns

  - `{:ok, [%ScoreboardGame{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_scoreboard(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.ScoreboardGame.t)} | {:error, Tesla.Env.t}
  def get_scoreboard(connection, opts \\ []) do
    optional_params = %{
      :classification => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scoreboard")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.ScoreboardGame{}]},
      {400, false}
    ])
  end

  @doc """
  Team game stats
  Team stats broken down by game

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `year` (integer()): Year/season filter for games
  - `opts` (keyword): Optional parameters
    - `:week` (integer()): Week filter
    - `:seasonType` (String.t): Season type filter (regular or postseason)
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference abbreviation filter
    - `:gameId` (integer()): Game id filter
    - `:classification` (String.t): Division classification filter (fbs/fcs/ii/iii)

  ### Returns

  - `{:ok, [%TeamGame{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_team_game_stats(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.TeamGame.t)} | {:error, Tesla.Env.t}
  def get_team_game_stats(connection, year, opts \\ []) do
    optional_params = %{
      :week => :query,
      :seasonType => :query,
      :team => :query,
      :conference => :query,
      :gameId => :query,
      :classification => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/games/teams")
      |> add_param(:query, :year, year)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.TeamGame{}]},
      {400, false}
    ])
  end

  @doc """
  Team records
  Get team records by year

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:year` (integer()): Year filter
    - `:team` (String.t): Team filter
    - `:conference` (String.t): Conference filter

  ### Returns

  - `{:ok, [%TeamRecord{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_team_records(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.TeamRecord.t)} | {:error, Tesla.Env.t}
  def get_team_records(connection, opts \\ []) do
    optional_params = %{
      :year => :query,
      :team => :query,
      :conference => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/records")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.TeamRecord{}]},
      {400, false}
    ])
  end
end
