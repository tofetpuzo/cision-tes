 
# Creating group administrators
 
resource "aws_iam_group" "administrators" {
    name = "administrators"
}
 
 
 
# create user
resource "aws_iam_user" "admin1" {
    name = "admin1"
}
 
 
# add a user to a group
resource "aws_iam_group_membership" "administrators-users" {
    name = "administrators-users"
    users = [
        "${aws_iam_user.admin1.name}",
    ]
    group = "${aws_iam_group.administrators.name}"
}