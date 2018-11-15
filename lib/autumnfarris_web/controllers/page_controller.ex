defmodule AutumnfarrisWeb.PageController do
  use AutumnfarrisWeb, :controller

  def about(conn, _params) do
    render(conn, "about.html")
  end

  def resume(conn, _params) do
    render(conn, "resume.html")
  end
end
