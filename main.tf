provider "aws"
profile   =  "default"
region    =  "ap-south-1"

resource "aws_vpc" "terraform_vpc" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "terraform_vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            =  ["aws_vpc.terraform_vpc.id"]
  cidr_block        =  "10.0.1.0/24"
  availability_zone =  "ap-south-1"

  tags = {
    Name =  "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            =  ["aws_vpc.terraform_vpc.id"] 
   cidr_block        =  "10.0.2.0/24"
  availability_zone =  "ap-south-1"

  tags = {
    Name =  "private subnet"
  }
}

resource "aws_instance" "app_sever" {
    

    ami           = "ami-079b5e5b3971bd10d "
    instance-type = "t2.micro"

    tags = {
       owner = "jaya"
    }
}