defmodule Licensor.Orgs do
  alias Licensor.Repo
  alias Licensor.Orgs.Organization

  def list_organizations() do
    Repo.all(Organization)
  end

  def create_organization(attrs \\ %{}) do
    %Organization{}
    |> Organization.changeset(attrs)
    |> Repo.insert()
  end

  def change_organization(%Organization{} = org) do
    Organization.changeset(org, %{})
  end
end
