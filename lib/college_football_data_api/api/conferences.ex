# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule CollegeFootballDataAPI.Api.Conferences do
  @moduledoc """
  API calls for all endpoints tagged `Conferences`.
  """

  alias CollegeFootballDataAPI.Connection
  import CollegeFootballDataAPI.RequestBuilder

  @doc """
  Conferences
  Get conference list

  ### Parameters

  - `connection` (CollegeFootballDataAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%Conference{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_conferences(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, list(CollegeFootballDataAPI.Model.Conference.t)} | {:error, Tesla.Env.t}
  def get_conferences(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/conferences")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%CollegeFootballDataAPI.Model.Conference{}]},
      {400, false}
    ])
  end
end
