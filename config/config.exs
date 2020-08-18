# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_phoenix, ecto_repos: [ProjectPhoenix.Repo]

# Configures the endpoint
config :project_phoenix, ProjectPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BJCOhTMWBE+1zO+yBkiDalj+aMSiKqzHsxNtbj4bvW7p40jska8OhbJZi6uxv+LJ",
  render_errors: [view: ProjectPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProjectPhoenix.PubSub

config :project_phoenix, ProjectPhoenixWeb.Endpoint,
   live_view: [
    signing_salt: "vxPEahYnKeJYIEYFVHGTXMUgIABpGnJp"
    ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
