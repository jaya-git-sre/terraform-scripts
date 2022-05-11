resource "aws_instance" "app_sever" {
    ami           = "ami-079b5e5b3971bd10d "
    instance-type = "t2.micro"

    tags = {
       owner = "jaya"
    }
}