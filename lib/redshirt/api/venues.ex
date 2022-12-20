# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Redshirt.Api.Venues do
  @moduledoc """
  API calls for all endpoints tagged `Venues`.
  """

  alias Redshirt.Connection
  import Redshirt.RequestBuilder

  @doc """
  Arena and venue information
  Venues

  ### Parameters

  - `connection` (Redshirt.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%Venue{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_venues(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:ok, list(Redshirt.Model.Venue.t())} | {:error, Tesla.Env.t()}
  def get_venues(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/venues")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Redshirt.Model.Venue{}]},
      {400, false}
    ])
  end
end
