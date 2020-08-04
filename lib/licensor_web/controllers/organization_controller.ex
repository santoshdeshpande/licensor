defmodule LicensorWeb.OrganizationController do
  use LicensorWeb, :controller

  alias Licensor.Orgs
  alias Licensor.Orgs.Organization

  def index(conn, _params) do
    orgs = Orgs.list_organizations()
    render(conn, "index.html", orgs: orgs)
  end

  def create(conn, %{"organization" => org_params}) do
    case Orgs.create_organization(org_params) do
      {:ok, _org} ->
        conn
        |> put_flash(:info, "Organization created successfully")
        |> redirect(to: Routes.organization_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def new(conn, _params) do
    changeset = Orgs.change_organization(%Organization{})
    render(conn, "new.html", changeset: changeset)
  end
end
