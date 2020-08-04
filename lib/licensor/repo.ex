defmodule Licensor.Repo do
  use Ecto.Repo,
    otp_app: :licensor,
    adapter: Ecto.Adapters.Postgres
end
