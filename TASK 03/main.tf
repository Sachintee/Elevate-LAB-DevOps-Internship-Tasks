terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

# Run nginx container
resource "docker_container" "nginx_container" {
  name  = "nginx-container"
  image = docker_image.nginx_image.name   # <-- FIXED LINE
  ports {
    internal = 80
    external = 8080
  }
}
