module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.25"
  vpc_id = "vpc-0c60bce87fce1710d"

  private_subnets = ["subnet-0664921fb91e1737f", "subnet-0b3221ab12dbb6b1b"]
  public_subnets  = ["subnet-07b7a297cc45dd933", "subnet-087748d64216735b7"]
}