## Pre-requisites

Before running this module, it is advised to run and build the CodeBuild Terraform state.
This is will fetch and build a sample Flask app and store it in ECR. This image can then be used
as part of this Terraform code.

## Overview

This Terraform code builds an ECS Fargate cluster. It then creates a task definition
called `my-web-app` and creates a service for it, running behind an ALB. The service can
then be viewed by accessing the ALB's CNAME.