module "eks_workers" {
source  = "cloudposse/eks-workers/aws"
  version = "1.2.0"  
  cluster_name                     = module.eks.cluster_name
  cluster_endpoint                 = module.eks.cluster_endpoint
  cluster_security_group_id        = aws_security_group.eks_cluster_sg.id
  instance_type                    = "t2.medium"
  vpc_id                           = aws_vpc.main.id
  subnet_ids                       = [aws_subnet.private.id]
  cluster_certificate_authority_data = module.eks.cluster_certificate_authority_data
  min_size                         = 1
  max_size                         = 3
name = "eks-workers"
}

