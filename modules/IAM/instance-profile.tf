resource "aws_iam_instance_profile" "nodegroup_instance_profile" {
  name = "${aws_iam_role.demo_eks_nodegroup.name}-instance-profile"
  role = aws_iam_role.demo_eks_nodegroup.name
}
