defmodule ProyectManagementSystem.ManagementFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProyectManagementSystem.Management` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        projects: "some projects",
        title: "some title"
      })
      |> ProyectManagementSystem.Management.create_project()

    project
  end
end
