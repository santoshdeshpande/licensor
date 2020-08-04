defmodule Licensor.Orgs.Organization do
  use Ecto.Schema

  import Ecto.Changeset
  alias Licensor.Orgs.Organization

  schema "organizations" do
    field :name, :string

    timestamps()
  end

  def changeset(%Organization{} = org, attrs \\ %{}) do
    org
    |> cast(attrs, [:name])
    |> validate_required(:name)
    |> unique_constraint(:name)
  end
end
