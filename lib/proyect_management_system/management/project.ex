defmodule ProyectManagementSystem.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "t" do
    field :description, :string
    field :projects, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:projects, :title, :description])
    |> validate_required([:projects, :title, :description])
  end
end
