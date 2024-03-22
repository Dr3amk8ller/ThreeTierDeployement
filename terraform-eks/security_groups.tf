resource "aws_security_group" "eks_cluster_sg" {
  vpc_id = aws_vpc.main.id

  # Define inbound and outbound rules as needed
}

