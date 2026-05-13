resource "aws_launch_template" "this" {
  name          = var.launch_template_name
  image_id      = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = var.security_group_ids

  user_data = base64encode(var.user_data)

  tag_specifications {
    resource_type = "instance"
    tags = merge(var.tags, {
      Name = var.launch_template_name
    })
  }

  tag_specifications {
    resource_type = "volume"
    tags = merge(var.tags, {
      Name = "${var.launch_template_name}-volume"
    })
  }

  tags = var.tags
}