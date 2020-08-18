defmodule ProjectPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :project_phoenix,
    adapter: Ecto.Adapters.Postgres
end
