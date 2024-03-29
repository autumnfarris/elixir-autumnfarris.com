# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :autumnfarris,
  ecto_repos: [Autumnfarris.Repo]

# Configures the endpoint
config :autumnfarris, AutumnfarrisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gl+waD4VZm/OSIFUiqu+abu6L4w3/vQsLLtmfCjMiI/M/7jw3UDYtoaS5Pil63ax",
  render_errors: [view: AutumnfarrisWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Autumnfarris.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
