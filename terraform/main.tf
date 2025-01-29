terraform {
  required_providers {
    kubiya = {
      source  = "kubiya-terraform/kubiya"
    }
  }
}

provider "kubiya" {
}

resource "kubiya_secret" "akivasecret1" {
  name     = "akivasecret1"
  value    = "hush"
  description = "hahahaha"
}
