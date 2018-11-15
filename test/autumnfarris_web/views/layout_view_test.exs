defmodule AutumnfarrisWeb.LayoutViewTest do
  use AutumnfarrisWeb.ConnCase, async: true

  test "Verify navbar is displayed", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "<nav role=\"navigation\">"
  end
end
