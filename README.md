# Personal Website Portfolio

A personal portfolio website hosted on **Microsoft Azure**, provisioned with **Terraform** as Infrastructure as Code, automatically deployed via **GitHub Actions**, and served through **Cloudflare** with a custom domain and SSL.

🌐 **Live:** www.miladysf.com

 ## Tech Stack
 |  |  |
| ------------- |:-------------:|
| Terraform | Infrastructure as Code | 
| Microsoft Azure | Cloud hosting (Storage Account) |
| GitHub Actions | CI/CD pipeline (auto-deploy on push) |
| Cloudflare | DNS management + SSL certificate |

Two Terraform providers are used:
- `hashicorp/azurerm` — Azure infrastructure
- `cloudflare/cloudflare` — DNS management

## CI/CD Pipeline
 
Every push to `master` automatically triggers a GitHub Actions workflow that:
 
1. Checks out the repository
2. Logs into Azure using a Service Principal
3. Uploads all files from `./site` to the Azure `$web` container
No manual deployments needed.
 


### Deploy Infrastructure
 
```bash
# Login to Azure
az login
 
# Initialise Terraform
terraform init
 
# Preview changes
terraform plan
 
# Apply infrastructure
terraform apply
```
## Collaborators
 
- [Mil](https://github.com/MiladYSF) 
- [qmadev](https://github.com/qmadev)
