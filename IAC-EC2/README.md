# EC2 Infrastructure with Terraform

## Setup

1. **Install Terraform**
   ```bash
   brew install terraform  # macOS
   ```

2. **Configure AWS credentials**
   ```bash
   aws configure
   ```

3. **Create tfvars file (optional)**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your values
   ```

4. **Initialize Terraform**
   ```bash
   cd IAC-EC2
   terraform init
   ```

4. **Deploy EC2 instance**
   ```bash
   terraform plan
   terraform apply
   ```

5. **Get outputs**
   ```bash
   terraform output
   ```

6. **Connect to EC2**
   ```bash
   ssh -i docker-demo-key.pem ubuntu@<PUBLIC_IP>
   ```

## Add to GitHub Secrets

After deployment, add these to GitHub Secrets:
- `EC2_HOST` - Use the `instance_public_ip` output
- `EC2_USERNAME` - Set to `ubuntu`
- `EC2_SSH_KEY` - Copy content from `docker-demo-key.pem`

## Destroy

```bash
terraform destroy
```
