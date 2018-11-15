defmodule Autumnfarris.GuestBookTest do
  use Autumnfarris.DataCase

  alias Autumnfarris.GuestBook

  describe "entries" do
    alias Autumnfarris.GuestBook.Entry

    @valid_attrs %{
      comments: "some comments",
      firstName: "some firstName",
      lastName: "some lastName"
    }
    @update_attrs %{
      comments: "some updated comments",
      firstName: "some updated firstName",
      lastName: "some updated lastName"
    }
    @invalid_attrs %{comments: nil, firstName: nil, lastName: nil}

    def entry_fixture(attrs \\ %{}) do
      {:ok, entry} =
        attrs
        |> Enum.into(@valid_attrs)
        |> GuestBook.create_entry()

      entry
    end

    test "list_entries/0 returns all entries" do
      entry = entry_fixture()
      assert GuestBook.list_entries() == [entry]
    end

    test "get_entry!/1 returns the entry with given id" do
      entry = entry_fixture()
      assert GuestBook.get_entry!(entry.id) == entry
    end

    test "create_entry/1 with valid data creates a entry" do
      assert {:ok, %Entry{} = entry} = GuestBook.create_entry(@valid_attrs)
      assert entry.comments == "some comments"
      assert entry.firstName == "some firstName"
      assert entry.lastName == "some lastName"
    end

    test "create_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = GuestBook.create_entry(@invalid_attrs)
    end

    test "update_entry/2 with valid data updates the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{} = entry} = GuestBook.update_entry(entry, @update_attrs)

      assert entry.comments == "some updated comments"
      assert entry.firstName == "some updated firstName"
      assert entry.lastName == "some updated lastName"
    end

    test "update_entry/2 with invalid data returns error changeset" do
      entry = entry_fixture()
      assert {:error, %Ecto.Changeset{}} = GuestBook.update_entry(entry, @invalid_attrs)
      assert entry == GuestBook.get_entry!(entry.id)
    end

    test "delete_entry/1 deletes the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{}} = GuestBook.delete_entry(entry)
      assert_raise Ecto.NoResultsError, fn -> GuestBook.get_entry!(entry.id) end
    end

    test "change_entry/1 returns a entry changeset" do
      entry = entry_fixture()
      assert %Ecto.Changeset{} = GuestBook.change_entry(entry)
    end
  end

  describe "entries" do
    alias Autumnfarris.GuestBook.Entry

    @valid_attrs %{
      Comments: "some Comments",
      First: "some First",
      Last: "some Last",
      Name: "some Name"
    }
    @update_attrs %{
      Comments: "some updated Comments",
      First: "some updated First",
      Last: "some updated Last",
      Name: "some updated Name"
    }
    @invalid_attrs %{Comments: nil, First: nil, Last: nil, Name: nil}

    def entry_fixture(attrs \\ %{}) do
      {:ok, entry} =
        attrs
        |> Enum.into(@valid_attrs)
        |> GuestBook.create_entry()

      entry
    end

    test "list_entries/0 returns all entries" do
      entry = entry_fixture()
      assert GuestBook.list_entries() == [entry]
    end

    test "get_entry!/1 returns the entry with given id" do
      entry = entry_fixture()
      assert GuestBook.get_entry!(entry.id) == entry
    end

    test "create_entry/1 with valid data creates a entry" do
      assert {:ok, %Entry{} = entry} = GuestBook.create_entry(@valid_attrs)
      assert entry.Comments == "some Comments"
      assert entry.First == "some First"
      assert entry.Last == "some Last"
      assert entry.Name == "some Name"
    end

    test "create_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = GuestBook.create_entry(@invalid_attrs)
    end

    test "update_entry/2 with valid data updates the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{} = entry} = GuestBook.update_entry(entry, @update_attrs)

      assert entry.Comments == "some updated Comments"
      assert entry.First == "some updated First"
      assert entry.Last == "some updated Last"
      assert entry.Name == "some updated Name"
    end

    test "update_entry/2 with invalid data returns error changeset" do
      entry = entry_fixture()
      assert {:error, %Ecto.Changeset{}} = GuestBook.update_entry(entry, @invalid_attrs)
      assert entry == GuestBook.get_entry!(entry.id)
    end

    test "delete_entry/1 deletes the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{}} = GuestBook.delete_entry(entry)
      assert_raise Ecto.NoResultsError, fn -> GuestBook.get_entry!(entry.id) end
    end

    test "change_entry/1 returns a entry changeset" do
      entry = entry_fixture()
      assert %Ecto.Changeset{} = GuestBook.change_entry(entry)
    end
  end

  describe "entries" do
    alias Autumnfarris.GuestBook.Entry

    @valid_attrs %{
      Comments: "some Comments",
      First_Name: "some First_Name",
      Last_Name: "some Last_Name"
    }
    @update_attrs %{
      Comments: "some updated Comments",
      First_Name: "some updated First_Name",
      Last_Name: "some updated Last_Name"
    }
    @invalid_attrs %{Comments: nil, First_Name: nil, Last_Name: nil}

    def entry_fixture(attrs \\ %{}) do
      {:ok, entry} =
        attrs
        |> Enum.into(@valid_attrs)
        |> GuestBook.create_entry()

      entry
    end

    test "list_entries/0 returns all entries" do
      entry = entry_fixture()
      assert GuestBook.list_entries() == [entry]
    end

    test "get_entry!/1 returns the entry with given id" do
      entry = entry_fixture()
      assert GuestBook.get_entry!(entry.id) == entry
    end

    test "create_entry/1 with valid data creates a entry" do
      assert {:ok, %Entry{} = entry} = GuestBook.create_entry(@valid_attrs)
      assert entry.Comments == "some Comments"
      assert entry.First_Name == "some First_Name"
      assert entry.Last_Name == "some Last_Name"
    end

    test "create_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = GuestBook.create_entry(@invalid_attrs)
    end

    test "update_entry/2 with valid data updates the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{} = entry} = GuestBook.update_entry(entry, @update_attrs)

      assert entry.Comments == "some updated Comments"
      assert entry.First_Name == "some updated First_Name"
      assert entry.Last_Name == "some updated Last_Name"
    end

    test "update_entry/2 with invalid data returns error changeset" do
      entry = entry_fixture()
      assert {:error, %Ecto.Changeset{}} = GuestBook.update_entry(entry, @invalid_attrs)
      assert entry == GuestBook.get_entry!(entry.id)
    end

    test "delete_entry/1 deletes the entry" do
      entry = entry_fixture()
      assert {:ok, %Entry{}} = GuestBook.delete_entry(entry)
      assert_raise Ecto.NoResultsError, fn -> GuestBook.get_entry!(entry.id) end
    end

    test "change_entry/1 returns a entry changeset" do
      entry = entry_fixture()
      assert %Ecto.Changeset{} = GuestBook.change_entry(entry)
    end
  end
end
