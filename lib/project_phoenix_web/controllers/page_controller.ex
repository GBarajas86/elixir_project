defmodule ProjectPhoenixWeb.PageController do
  use ProjectPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
