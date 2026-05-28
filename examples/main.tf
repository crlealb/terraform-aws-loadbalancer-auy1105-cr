module "loadbalancer" {
  source = ".."

  public_subnet_ids     = ["public_1", "public_2"]
  vpc_id                = "vpc-12345"
  security_group_alb_id = "sg-12345"
  target_instance_id    = "i-12345"
  target_port           = 80
  environment           = "dev"
  common_tags = {
    Project     = "eva2"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
