resource "aws_s3_bucket" "tommy_docker_tf_bucket" {
  bucket = "tommy-docker-tf-bucket-158646513521"

  tags = {
    Name = "Docker bucket"
  }
}