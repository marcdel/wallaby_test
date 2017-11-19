# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wallaby_test,
  ecto_repos: [WallabyTest.Repo]

# Configures the endpoint
config :wallaby_test, WallabyTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BKgdH9DctPf1HLZCwGyPX2qRDNYcH8UqcH0N9+FSurd5x6T5Uy6VrUsGMOtNQ6bC",
  render_errors: [view: WallabyTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WallabyTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
