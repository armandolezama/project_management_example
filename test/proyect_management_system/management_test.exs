defmodule ProyectManagementSystem.ManagementTest do
  use ProyectManagementSystem.DataCase

  alias ProyectManagementSystem.Management

  describe "t" do
    alias ProyectManagementSystem.Management.Project

    import ProyectManagementSystem.ManagementFixtures

    @invalid_attrs %{description: nil, projects: nil, title: nil}

    test "list_t/0 returns all t" do
      project = project_fixture()
      assert Management.list_t() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Management.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      valid_attrs = %{description: "some description", projects: "some projects", title: "some title"}

      assert {:ok, %Project{} = project} = Management.create_project(valid_attrs)
      assert project.description == "some description"
      assert project.projects == "some projects"
      assert project.title == "some title"
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Management.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      update_attrs = %{description: "some updated description", projects: "some updated projects", title: "some updated title"}

      assert {:ok, %Project{} = project} = Management.update_project(project, update_attrs)
      assert project.description == "some updated description"
      assert project.projects == "some updated projects"
      assert project.title == "some updated title"
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Management.update_project(project, @invalid_attrs)
      assert project == Management.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Management.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Management.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Management.change_project(project)
    end
  end
end
