defmodule Autumnfarris.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add(:first_name, :string)
      add(:last_name, :string)
      add(:comments, :string)

      timestamps()
    end
  end
end
