defmodule PhoenixLiveViewTestWeb.PageController do
  use PhoenixLiveViewTestWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, PhoenixLiveViewTestWeb.TestView, session: %{})
  end
end
