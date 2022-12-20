# Redshirt

An unofficial API library for interacting with the College Football Data (CFBD) API. For information about the API, or to acquire an API token, please visit [CollegeFootballData.com](https://collegefootballdata.com/).

## Installation

<!-- If [available in Hex][], the package can be installed by adding `redshirt` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:redshirt, "~> 4.4.12"}]
end
``` -->

```elixir
def deps do
  [{:redshirt, github: "cbortz/redshirt-elixir", branch: "main"}]
end
```

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :redshirt, base_url: "https://api.collegefootballdata.com"
```

<!-- Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`Redshirt.Connection.new/1`:

```elixir
client = Redshirt.Connection.new(base_url: "https://api.collegefootballdata.com")
``` -->

<!-- ## Documentation

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/redshirt][docs]. -->

## Development

### Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/redshirt
