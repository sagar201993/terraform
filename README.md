# Terraform Project Structure

This repository now uses a cleaner root-module layout that is common in professional Terraform projects.

## Files

- `providers.tf`: Terraform and provider requirements
- `backend.tf`: remote state backend configuration
- `variables.tf`: input variables
- `locals.tf`: shared local values such as common tags
- `main.tf`: infrastructure resources
- `outputs.tf`: useful output values
- `terraform.tfvars.example`: sample variable values

## Usage

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Update values, especially `s3_bucket_name`
3. Run `terraform init`
4. Run `terraform plan`
5. Run `terraform apply`

## Notes

- S3 bucket names must be globally unique.
- The backend bucket in `backend.tf` must already exist before `terraform init` can use it.
