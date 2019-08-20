defmodule PhoenixLiveViewTest.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_live_view_test,
    adapter: Ecto.Adapters.Postgres
end
