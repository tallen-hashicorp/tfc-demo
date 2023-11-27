# Terraform AWS S3 Bucket Demo

## Overview

This Terraform configuration sets up an AWS S3 bucket with a random name in the specified AWS region. The bucket name is generated using the `random_string` resource, and tags are applied to the bucket for better organization.

## Terraform Cloud Setup

1. **Clone the Repository:**

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Configure Terraform Cloud Workspace:**

   - Log in to [Terraform Cloud](https://app.terraform.io/).
   - Create a new organization or use an existing one.
   - Create a new workspace named `tf-demo-cli`.
   - Link the workspace to your version control system (VCS) repository.

3. **Configure Variables:**

   - Configure Terraform Cloud workspace variables for any sensitive or environment-specific values. This may include AWS access key, secret key, etc.

4. **Queue and Apply the Plan:**

   - Queue a new plan in Terraform Cloud.
   - Review the plan and apply it to create the S3 bucket.

## Output

After successfully applying the Terraform configuration on Terraform Cloud, the name of the created S3 bucket will be available as an output within the Terraform Cloud workspace.

## Cleanup

To clean up resources created by Terraform, you can initiate a destroy operation from the Terraform Cloud workspace.
