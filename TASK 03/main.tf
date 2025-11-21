# This is where the error is fixed
resource "docker_container" "nginx_container" {
  name  = "my-terraform-nginx-container"
  
  # CORRECT: Reference the image ID from the docker_image resource
  image = docker_image.nginx_image.image_id 

  ports {
    internal = 80
    external = 8080
  }
  
  # ... other configuration ...
}
