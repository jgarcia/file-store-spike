# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :file_store,
  ecto_repos: [FileStore.Repo]

# Configures the endpoint
config :file_store, FileStoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B8Ty8dR6rgITHGUnQSA+6ijiDEdYQvVGJVD4/86DAlN6yVUGcJ4ccWNZnRLUJ79Y",
  render_errors: [view: FileStoreWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FileStore.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "iJcsDE+Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
