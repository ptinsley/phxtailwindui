defmodule PhxtailwinduiWeb.PageController do
  use PhxtailwinduiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
