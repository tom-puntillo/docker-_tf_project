resource "aws_dynamodb_table" "music-table" {
  name           = "Music"
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
