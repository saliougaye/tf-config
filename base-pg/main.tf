resource "docker_image" "pg-db" {
  name         = "postgres"
  keep_locally = false
}


resource "docker_container" "pg-db" {
  image = docker_image.pg-db.id
  name  = var.container_name
  ports {
    internal = 5432
    external = var.external_port
  }
}