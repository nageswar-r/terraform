module "ec2" {
    source = "../feb-26-terraform-module"
    project = var.project_name
    environment = var.env
    ami_id = data.aws_ami.joindevops.id
    sg_ids = var.sg_ids
    # instance_type = "t3.large"
    instance_type = var.instance_type
    tags = {
        Name = "${var.project_name}-${var.env}-${var.component}"
        component = var.component
    }
}