defmodule FileStore.Accounts.User do
  use Ecto.Schema
  use Arc.Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :avatar, FileStore.Avatar.Type
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> cast_attachments(attrs, [:avatar])
    |> validate_required([:name, :avatar])
  end
end
