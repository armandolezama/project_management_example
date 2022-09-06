defmodule ProjectManagementSystem.Repo do
  use Ecto.Repo,
    otp_app: :project_management_system,
    adapter: Ecto.Adapters.Postgres
end
