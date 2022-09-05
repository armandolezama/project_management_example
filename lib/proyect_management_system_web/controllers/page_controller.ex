defmodule ProyectManagementSystemWeb.PageController do
  use ProyectManagementSystemWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
