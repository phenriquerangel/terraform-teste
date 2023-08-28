terraform {
  required_providers {
    random= {
        source = "hashicorp/random"
        version = "3.4.3"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "pet_type" {
  type = string
  description = "Qual é o PET"
  default = "Cachorro"
}

resource "random_pet" "pet_name" {
  keepers = {
    pet_type = var.pet_type
  }
}

output "pet_name" {
  value = random_pet.pet_name
}