resource "aws_vpc" "DemowithTemiVPC" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "DemowithTemiVPC"
    }
}

resource "aws_internet_gateway" "DemowithTemiVPC" {
    vpc_id = aws_vpc.DemowithTemiVPC.id
  
}

resource "aws_route" "internet_access" {
    route_table_id = aws_vpc.DemowithTemiVPC.main_route_table_id
    destination_cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_internet_gateway.DemowithTemiVPC.id
  
}

resource "aws_subnet" "demoPUBLIC-SN" {
    vpc_id = aws_vpc.DemowithTemiVPC.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
  
}