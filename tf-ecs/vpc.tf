
# resource "aws_vpc" "chd-vpc" {
#   cidr_block           = "10.1.0.0/16"
#   enable_dns_hostnames = true
#   enable_dns_support   = true

#   tags = {
#     Name        = "${var.project_name}-vpc"
#     Environment = var.environment
#   }
# }

# resource "aws_internet_gateway" "chd-igw" {
#   vpc_id = aws_vpc.chd-vpc.id

#   tags = {
#     Name        = "${var.project_name}-igw"
#     Environment = var.environment
#   }
# }

# resource "aws_subnet" "public" {
#   count                   = 2
#   vpc_id                  = aws_vpc.chd-vpc.id
#   cidr_block              = "10.1.${count.index + 1}.0/24"
#   availability_zone       = data.aws_availability_zones.available.names[count.index]
#   map_public_ip_on_launch = true

#   tags = {
#     Name        = "${var.project_name}-public-subnet-${count.index + 1}"
#     Environment = var.environment
#   }
# }

# resource "aws_route_table" "public" {
#   vpc_id = aws_vpc.chd-vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.chd-igw.id
#   }

#   tags = {
#     Name        = "${var.project_name}-public-rt"
#     Environment = var.environment
#   }
# }

# resource "aws_route_table_association" "public" {
#   count          = 2
#   subnet_id      = aws_subnet.public[count.index].id
#   route_table_id = aws_route_table.public.id
# }