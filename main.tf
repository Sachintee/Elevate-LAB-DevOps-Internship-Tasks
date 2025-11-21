# main.tf

# Configure the Docker provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Configure Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull the Docker image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create a Docker container
resource "docker_container" "nginx_container" {
  name  = "nginx-terraform"
  image = docker_image.nginx.image_id
  
  ports {
    internal = 80
    external = 8080
  }
  
  restart = "unless-stopped"
}
