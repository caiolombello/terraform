resource "aws_instance" "machine" {
  ami           = lookup(var.ec2_ami, var.region)
  instance_type = var.instance_type

  tags = {
    Name = "machine-${count.index}"
  }
}

resource "aws_instance" "mysql-dependent" {
  # Create dependencies
  depends_on = [
    aws_db_instance.mysql
  ]
  ami           = lookup(var.ec2_ami, var.region)
  instance_type = var.instance_type
  tags = {
    Name = "mysql-dependent"
  }
}

#Create database
resource "aws_db_instance" "mysql" {
  identifier          = "mysql"
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = var.mysql_version
  instance_class      = var.instance_class
  db_name             = "defaultdb"
  username            = "foo"
  password            = "foobarbaz"
  skip_final_snapshot = true
}
