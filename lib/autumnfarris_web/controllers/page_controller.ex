defmodule AutumnfarrisWeb.PageController do
  use AutumnfarrisWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
