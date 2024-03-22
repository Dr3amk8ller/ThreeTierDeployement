module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-cluster"
  version         = "20.8.4"
  cluster_version = "1.29"
  subnet_ids         = [aws_subnet.public.id, aws_subnet.private.id]
  vpc_id          = aws_vpc.main.id
 # Define additional configurations as needed
}


