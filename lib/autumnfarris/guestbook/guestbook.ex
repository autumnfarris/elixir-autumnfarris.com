defmodule Autumnfarris.Guestbook do
  #  import Ecto.Query

  alias Autumnfarris.Guestbook.Entry
  alias Autumnfarris.Repo

  def get_entry(id) do
    Repo.get(Entry, id)
  end

  def get_entry!(id) do
    Repo.get!(Entry, id)
  end

  def get_entry_by(params) do
    Repo.get_by(Entry, params)
  end

  def list_entries do
    Repo.all(Entry)
  end

  def change_entry(%Entry{} = entry) do
    Entry.changeset(entry, %{})
  end

  def create_entry(attrs \\ %{}) do
    %Entry{}
    |> Entry.changeset(attrs)
    |> Repo.insert()
  end
end
