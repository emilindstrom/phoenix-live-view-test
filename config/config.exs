# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_live_view_test,
  ecto_repos: [PhoenixLiveViewTest.Repo]

# Configures the endpoint
config :phoenix_live_view_test, PhoenixLiveViewTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vY+UNz/cd75BDyMppE0oglXsBOO9mPnIAWm9B5aWli1KAlmi7dbzNE/XQ/l+XOLt",
  render_errors: [view: PhoenixLiveViewTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixLiveViewTest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "Pda1b95mufXIVAH0wSOn0ek4x8MkGJnf"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
