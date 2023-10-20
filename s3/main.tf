resource "aws_s3_bucket" "tommy_docker_tf_bucket" {
  bucket = "tommy_docker_tf_bucket_158646513521"

  tags = {
    Name = "Docker bucket"
  }
}