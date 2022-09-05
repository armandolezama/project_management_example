defmodule ProyectManagementSystem.Repo.Migrations.CreateT do
  use Ecto.Migration

  def change do
    create table(:t) do
      add :projects, :string
      add :title, :string
      add :description, :text

      timestamps()
    end
  end
end
