resource "aws_instance" "dev" {
   ami = "ami-00ee4df451840fa9d"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
   ami = "ami-00ee4df451840fa9d"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0
}