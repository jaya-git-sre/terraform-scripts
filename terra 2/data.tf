data "aws_emi" "ec2_ami" {
    most_recent  = true
    owners       = ["amazon linux"]
    
    filter {
        name = "name"
        value = ["Amazon Linux 2 Kernel 5.10 AMI 2.0.20220426.0 x86_64 HVM gp2"]
    }
}