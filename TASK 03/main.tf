# 1. Define Terraform Requirements and Providers
terraform {
  required_providers {
    # Specify that we need the Docker provider
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0" # Use a modern version
    }
  }
}

# 2. Configure the Docker Provider
# The provider block is how Terraform connects to the Docker API
provider "docker" {
  # For most modern desktop installations (Windows/Mac/Linux),
  # leaving the 'host' argument empty works as it defaults to the correct socket.
}

# 3. Define the Docker Image Resource (The blueprint)
# This resource ensures the 'nginx:latest' image is available locally.
resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = true # Don't delete the image when the container is destroyed
}

# 4. Define the Docker Container Resource (The running instance)
resource "docker_container" "nginx_webserver" {
  name  = "task3-nginx-container"

  # Link the container to the image resource defined above
  image = docker_image.nginx_image.image_id

  # Map port 8080 on your computer (external) to port 80 in the container (internal)
  ports {
    internal = 80
    external = 8080
  }

  # Command to keep the container running in the background
  command = ["/usr/sbin/nginx", "-g", "daemon off;"]

  # Restart the container automatically if it stops
  restart = "always"
}

# 5. Define an Output (Optional, but helpful)
# This will show you the container's ID after successful creation
output "container_id" {
  value = docker_container.nginx_webserver.id
}
