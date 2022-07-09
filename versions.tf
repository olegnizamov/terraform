terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "olegnizamov"

    workspaces {
      name = "my-app-prod"
    }
  }
  
  required_version = ">= 0.14"
}
