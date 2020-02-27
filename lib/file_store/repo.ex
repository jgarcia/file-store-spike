defmodule FileStore.Repo do
  use Ecto.Repo,
    otp_app: :file_store,
    adapter: Ecto.Adapters.Postgres
end
