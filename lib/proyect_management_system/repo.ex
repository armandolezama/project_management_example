defmodule ProyectManagementSystem.Repo do
  use Ecto.Repo,
    otp_app: :proyect_management_system,
    adapter: Ecto.Adapters.Postgres
end
