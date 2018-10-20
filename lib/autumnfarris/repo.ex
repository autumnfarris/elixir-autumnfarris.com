defmodule Autumnfarris.Repo do
  use Ecto.Repo,
    otp_app: :autumnfarris,
    adapter: Ecto.Adapters.Postgres
end
