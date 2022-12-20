# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Api.Drives do
  @moduledoc """
  API calls for all endpoints tagged `Drives`.
  """

  alias Redshirt.Connection
  import Redshirt.RequestBuilder

  @doc """
  Drive data and results
  Get game drives

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `year` (integer()): Year filter
  - `opts` (keyword): Optional parameters
    - `:seasonType` (String.t): Season type filter
    - `:week` (integer()): Week filter
    - `:team` (String.t): Team filter
    - `:offense` (String.t): Offensive team filter
    - `:defense` (String.t): Defensive team filter
    - `:conference` (String.t): Conference filter
    - `:offenseConference` (String.t): Offensive conference filter
    - `:defenseConference` (String.t): Defensive conference filter
    - `:classification` (String.t): Division classification filter (fbs/fcs/ii/iii)

  ### Returns

  - `{:ok, [%Drive{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_drives(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, list(Redshirt.Model.Drive.t())} | {:error, Tesla.Env.t()}
  def get_drives(connection, year, opts \\ []) do
    optional_params = %{
      :seasonType => :query,
      :week => :query,
      :team => :query,
      :offense => :query,
      :defense => :query,
      :conference => :query,
      :offenseConference => :query,
      :defenseConference => :query,
      :classification => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/drives")
      |> add_param(:query, :year, year)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.Drive{}]}
    ])
  end
end
