aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

#create network
aws cloudformation create-stack --stack-name ThaiLX1-Demo-NetWork --template-body file://thailx1-network.yaml --parameters file://thailx1-network-parameters.json  --region=us-east-1

#create server
aws cloudformation create-stack --stack-name ThaiLX1-Demo-Servers --template-body file://thailx1-servers.yaml --parameters file://thailx1-servers-parameters.json  --region=us-east-1

#delete stack
aws cloudformation delete-stack --stack-name ThaiLX1-Demo-Servers

aws cloudformation delete-stack --stack-name ThaiLX1-Demo-NetWork