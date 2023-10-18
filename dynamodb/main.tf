resource "aws_dynamodb_table" "dynamodb-music-table" {
  name           = "MusicTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "BandName"
  range_key      = "SongTitle"

  attribute {
    name = "BandName"
    type = "S"
  }

  attribute {
    name = "SongTitle"
    type = "S"
  }

  attribute {
    name = "Album"
    type = "S"
  }

global_secondary_index {
  name               = "SongTitleIndex"
  hash_key           = "SongTitle"
  range_key          = "Album"
  write_capacity     = 10
  read_capacity      = 10
  projection_type    = "INCLUDE"
  non_key_attributes = ["BandName"]
}
}