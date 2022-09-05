defmodule ProyectManagementSystemWeb.ProjectView do
  use ProyectManagementSystemWeb, :view
  alias ProyectManagementSystemWeb.ProjectView

  def render("index.json", %{t: t}) do
    %{data: render_many(t, ProjectView, "project.json")}
  end

  def render("show.json", %{project: project}) do
    %{data: render_one(project, ProjectView, "project.json")}
  end

  def render("project.json", %{project: project}) do
    %{
      id: project.id,
      projects: project.projects,
      title: project.title,
      description: project.description
    }
  end
end
