defmodule Autumnfarris.Guestbook.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  # alias Autumnfarris.Guestbook

  schema "entries" do
    field :first_name, :string
    field :last_name, :string
    field :comments, :string

    timestamps()
  end

  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:first_name, :last_name, :comments])
    |> validate_required([:first_name, :last_name, :comments])
  end
end
