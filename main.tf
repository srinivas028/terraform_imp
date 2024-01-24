resource "aws_instance" "sri" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    key_name = "sri123"
    count = 3
    tags = {
    "Name" = "sri-${count.index}"
}
}

