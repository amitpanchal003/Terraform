
resource "aws_launch_template" "template-web"{
    name= "launch-web-template"
    image-id="ami-080e1f13689e07408"
    instance_type="t2.micro"
    key_name="add key name"

    network_interfaces {
        device_index=0
        security_groups=["add security groups"]      
    }
    user_data= filebase64("user-data.sh")
    tag_specifications {

        resource_type="instance"
        tags{
            Name="web-tier"
        }
    }
}