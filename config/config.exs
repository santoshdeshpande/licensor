# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :licensor,
  ecto_repos: [Licensor.Repo]

# Configures the endpoint
config :licensor, LicensorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Lv4fqll0VLnV/m7krMKkP2LcDKlVnZ+Q2UYrSiFyRFO5tEXKRWigNGod6zoF3sOF",
  render_errors: [view: LicensorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Licensor.PubSub,
  live_view: [signing_salt: "i8JH0MN/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
