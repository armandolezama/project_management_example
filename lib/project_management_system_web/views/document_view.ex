defmodule ProjectManagementSystemWeb.DocumentView do
  use ProjectManagementSystemWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :published, :content, :view_count, :project_id]
end
