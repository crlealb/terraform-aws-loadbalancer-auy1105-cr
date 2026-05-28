variable "public_subnet_ids" {
  description = "IDs de las subnets públicas donde se creará el ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID de la VPC donde se desplegará el ALB"
  type        = string
}

variable "security_group_alb_id" {
  description = "ID del security group para el ALB"
  type        = string
}

variable "target_instance_id" {
  description = "ID de la instancia EC2 que se registrará en el target group"
  type        = string
}

variable "target_port" {
  description = "Puerto del target group y la instancia de destino"
  type        = number
  default     = 80
}

variable "environment" {
  description = "Nombre del ambiente"
  type        = string
  default     = "dev"
}

variable "common_tags" {
  description = "Etiquetas comunes que se aplicarán a todos los recursos"
  type        = map(string)
  default     = {}
}