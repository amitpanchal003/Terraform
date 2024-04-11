
resource "aws_launch_template" "template-web"{
    name= "launch-web-template"
    image_id="ami-080e1f13689e07408"
    instance_type="t2.micro"
    key_name="demonew"

    network_interfaces {
        device_index=0
        security_groups=[aws_security_group.asg-security-group-web.id]      
    }
    user_data= filebase64("01.11.1-user-data.sh")
    tag_specifications {

        resource_type="instance"
        tags={
            Name="web-tier"
        }
    }
}