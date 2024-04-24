terraform {
  required_version = ">= 0.13"

  required_providers {
    aws ={ source  = "hashicorp/aws"}
  }

  backend "s3" {
    bucket         = "matbos-dip-bucket"  
    key            = "matbos-dip-bucket.tfstate"  // Путь к файлу состояния в S3
    region         = "us-east-1"  
    dynamodb_table = "matbos-dip-table"  // DynamoDB таблица для блокировки состояния
    encrypt        = true  // Шифрование файла состояния
  }
}

