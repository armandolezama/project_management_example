defmodule ProyectManagementSystemWeb.ProjectController do
  use ProyectManagementSystemWeb, :controller

  alias ProyectManagementSystem.Management
  alias ProyectManagementSystem.Management.Project

  action_fallback ProyectManagementSystemWeb.FallbackController

  def index(conn, _params) do
    t = Management.list_t()
    render(conn, "index.json", t: t)
  end

  def create(conn, %{"project" => project_params}) do
    with {:ok, %Project{} = project} <- Management.create_project(project_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.project_path(conn, :show, project))
      |> render("show.json", project: project)
    end
  end

  def show(conn, %{"id" => id}) do
    project = Management.get_project!(id)
    render(conn, "show.json", project: project)
  end

  def update(conn, %{"id" => id, "project" => project_params}) do
    project = Management.get_project!(id)

    with {:ok, %Project{} = project} <- Management.update_project(project, project_params) do
      render(conn, "show.json", project: project)
    end
  end

  def delete(conn, %{"id" => id}) do
    project = Management.get_project!(id)

    with {:ok, %Project{}} <- Management.delete_project(project) do
      send_resp(conn, :no_content, "")
    end
  end
end
