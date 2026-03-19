module "vpc"{
    source = "../vpc-module"
    project = var.project
    environment = var.environment
    is_peering_required = true
}