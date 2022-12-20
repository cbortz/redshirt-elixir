defmodule Redshirt.ConnectionTest do
  use ExUnit.Case, async: true

  describe "setting API key" do
    setup do
      put_application_env_for_test(:redshirt, :api_key, "foo-bar")
    end

    test "sets the configured api key as the token by default" do
      assert "foo-bar" == Redshirt.Connection.new() |> find_bearer_token()
    end

    test "sets the provided api key as the token" do
      assert "so-secret" == Redshirt.Connection.new(api_key: "so-secret") |> find_bearer_token()
    end
  end

  # https://elixirforum.com/t/using-application-get-env-application-put-env-in-exunit-tests/8019/3
  defp put_application_env_for_test(app, key, value) do
    previous_value = Application.get_env(app, key)
    Application.put_env(app, key, value)
    on_exit(fn -> Application.put_env(app, key, previous_value) end)
  end

  defp find_bearer_token(conn) do
    [[token: token]] =
      conn.pre |> Enum.find(fn e -> elem(e, 0) == Tesla.Middleware.BearerAuth end) |> elem(2)

    token
  end
end
