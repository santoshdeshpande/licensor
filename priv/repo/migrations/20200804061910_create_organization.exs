defmodule Licensor.Repo.Migrations.CreateOrganization do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :text

      timestamps()
    end

    create unique_index(:organizations, [:name])
  end
end
