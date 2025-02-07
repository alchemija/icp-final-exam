# icp-final-exam

Project structure:
```
.
├── terraform/
│   ├── main.tf #IAM user roles and security groups
│   ├── vpc.tf #VPC init, subnets, gateways, route tables
│   ├── eks.tf #EKC cluster, node init + autoscaling
│   ├── variables.tf #main variable definitions and fetches account data dynamically
│   └── outputs.tf
├── values.yml #values for your atlantis setup
└── .gitignore
```

## Prerequisites:

- `terraform`
- `helm`
- `aws-cli`
- `ngrok`
- A running local k8s cluster to connect Atlantis to.

## Usage

To deploy terraform in AWS, you can run `terraform apply` inside of the terraform folder.

To deploy Atlantis on your local machine via Helm, update all of the values in `values.yml` to correspond with your account/repo, run `helm install atlantis runatlantis/atlantis -f values.yaml`, proxy your internal port via `ngrok` & add it as a WebHook to your repo.

More elaborate instructions on WebHooks/values here: https://www.runatlantis.io/docs/installation-guide.html