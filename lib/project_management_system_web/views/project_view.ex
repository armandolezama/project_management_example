defmodule ProjectManagementSystemWeb.ProjectView do
  use ProjectManagementSystemWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
