## Overview

This section outlines the process creating a CodeBuild job. This job will
pull a Git repostitory from GitHub and create a Docker image, that is then
pushed to ECR.

## Components

CodeBuild consists of several parts:

1. The CodeBuild job itself. This defines the type of job that is running.
in this case, constructing a Docker image. It also defines the compute size,
the Docker image that the build job runs in and environmental variables that
are fed to the build environment.

2. The `buildspec.yml` file. These are instructions to CodeBuild for the actions
to take. In this scenario, logging into ECR, running the Docker building and tagging
process and then pushing the resulting image to ECR. Note that the `buildspec.yml` file
is stored in the source code repository: `https://github.com/exNihlio/flask.git`. This is
a simple flask app that connects to Redis and/or Memcached.

3. The ECR portion. ECR is a Docker compatible image registry. While it is possible to
use Docker Hub with CodeBuild, the costs for ECR are minimal and dovetail with the rest
of this project. 

4. IAM roles and policies. CodeBuild requires permissions to write to CloudWatch and to
ECR. The contained `roles.tf` and `policies.tf` will handle this portion.


## Getting started. 

Each `.tf` file is commented with necessary explanations.
