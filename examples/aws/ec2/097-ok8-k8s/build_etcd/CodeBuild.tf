resource "aws_codebuild_project" "etcd_rpm_centos_7" {
    name = "etcd_rpm_centos_7"
    description = "Build a Centos 7 etcd rpm from the GitHub release"
    build_timeout = 10
    service_role = aws_iam_role.CodeBuild_etcd.arn
    source {
        type = "GITHUB"
        location = var.github_url
    }
    environment {
        compute_type = "BUILD_GENERAL1_SMALL"
        image = "aws/codebuild/amazonlinux2-x86_64-standard:3.0"
        type = "LINUX_CONTAINER"
        environment_variable {
            name = "DISTRO"
            value = "centos"
        }
        environment_variable {
            name = "OS_VERSION"
            value = 7
        }
        environment_variable {
             name = "GITHUB_URL"
             value = "https://github.com/etcd-io/etcd/releases/download"
        }
        environment_variable {
             name = "ETCD_VER"
             value = "v3.4.13"
        }
        environment_variable {
             name = "ETCD_ARCH"
             value = "amd64"
        }
        environment_variable {
             name = "ETCD_URL"
             value = "$GITHUB_URL/$ETCD_VER/etcd-$ETCD_VER-linux-$ETCD_ARCH.tar.gz"
        }
    }

    artifacts {
        type = "S3"
        location = "${data.aws_caller_identity.current.account_id}-codebuild-etcd"
        packaging = "NONE"
        path = "/rpms"
    }

    vpc_config {
        vpc_id = aws_vpc.CodeBuild_vpc.id
        subnets = [aws_subnet.CodeBuild_priv.id]
        security_group_ids = [ aws_security_group.CodeBuild.id ]
    }

}