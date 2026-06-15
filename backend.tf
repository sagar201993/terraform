terraform {
  backend "s3" {
    bucket       = "munish-sagar-terraform-state-20260615"
    key          = "dev/terrafrom.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
