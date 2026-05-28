# Ejemplo de uso del módulo LoadBalancer

Este módulo crea un Application Load Balancer, su target group, listener y la asociación con una instancia EC2.

## Uso

```hcl
module "loadbalancer" {
  source = "../../"

  public_subnet_ids     = module.redes.public_subnet_ids
  vpc_id                = module.redes.vpc_id
  security_group_alb_id = module.redes.security_group_alb_id
  target_instance_id    = module.computo.instance_id
  target_port           = 80
  environment           = "dev"
  common_tags = {
    Project     = "eva2"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
```
