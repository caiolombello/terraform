resource "aws_instance" "machine" {
  # Creates two identical aws ec2 instances
  count = 2
  # All two instances will have the same ami and instance_type
  ami           = lookup(var.ec2_ami, var.region)
  instance_type = var.instance_type
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "machine-${count.index}"
  }
}

resource "aws_instance" "postgres-dependent" {
  # Create dependencies
  depends_on = [
    aws_db_instance.postgresql
  ]
  ami = lookup(var.ec2_ami, var.region)
  instance_type = var.instance_type
  tags = {
    Name = "postgres-dependent"
  }
}

#Create database
resource "aws_db_instance" "postgresql" {
  identifier          = "postgres"
  allocated_storage   = 10
  engine              = "postgres"
  engine_version      = var.postgresql_version
  instance_class      = var.instance_class
  db_name             = "defaultdb"
  username            = "foo"
  password            = "foobarbaz"
  skip_final_snapshot = true
}
