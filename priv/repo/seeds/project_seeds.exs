alias ProyectManagementSystem.Repo
alias ProyectManagementSystem.Management.Project

Repo.insert! %Project{
  title: "My first title",
  description: "This is a insertion generated from a seed"
}

Repo.insert! %Project{  title: "My second title",
  description: "This is a insertion copied from the first"
}


Repo.insert! %Project{
  title: "My third title",
  description: "This is a insertion copied from the first"
}
