resource "null_resource" "delete_ec2" {
  count = length(aws_instance.t1)

  triggers = {
    instance_id = aws_instance.t1[count.index].id
  }

  provisioner "local-exec" {
    command = "aws ec2 terminate-instances --instance-ids ${aws_instance.t1[count.index].id} --region us-east-1 --profile test"
  }
}
