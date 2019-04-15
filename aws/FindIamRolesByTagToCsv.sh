aws ec2 describe-instances --region us-east-1 --filters "Name=tag:YourTag,Values=YourValue" |  jq '.["Reservations"]|.[]|.Instances|.[]|.IamInstanceProfile.Arn + "," +.InstanceId' 
