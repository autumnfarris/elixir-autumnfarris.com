defmodule AutumnfarrisWeb.EntryController do
  use AutumnfarrisWeb, :controller

  alias Autumnfarris.Guestbook
  alias Autumnfarris.Guestbook.Entry

  def index(conn, _params) do
    entries = Guestbook.list_entries()
    render(conn, "index.html", entries: entries)
  end

  def show(conn, %{"id" => id}) do
    entry = Guestbook.get_entry(id)
    render(conn, "show.html", entry: entry)
  end

  def new(conn, _params) do
    changeset = Guestbook.change_entry(%Entry{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"entry" => entry_params}) do
    {:ok, entry} = Guestbook.create_entry(entry_params)

    conn
    |> put_flash(:info, "Thank you #{entry.first_name}, your entry was created!")
    |> redirect(to: Routes.entry_path(conn, :new))
  end

  def delete(conn, %{"id" => id}) do
    entry = Guestbook.get_entry!(id)
    {:ok, _entry} = Guestbook.delete_entry(entry)

    conn
    |> put_flash(:info, "Entry deleted successfully.")
    |>redirect(to: Routes.entry_path(conn, :index))
  end
end
