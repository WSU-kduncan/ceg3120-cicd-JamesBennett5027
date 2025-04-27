# Project 5
## Task one
### generating tags
1.  to list tags run the command "git tag"
2.  to make a tag run the command git "tag -a 'tag name'" then nano will open up and ask you to write a tag message
3.  to push a tag to a git hub repo run the command "git push origin tag 'tagname'"
### Workflow

upon a new tag being pushed to a repo the workflow preforms the job named "docker" preforming the step checkout which makes it so the ubuntu runer can exacute code on the repo then runs docker meta which generates docker metadata in this case docker tags then it logs into docekr hub then it builds the container and pushes it to dockerhub

[workflow](.github/workflows/main.yml)
### testing
to test if the workflow is working you make a new smantic versioning formated tag push it and see if the change is reflected in the docker hub repo

to test if the image simply pull the image and run it
## Task two
### EC2 instance
1. AMI-084568db4383264d4
2. t2.medium
3. the recomended volume size per the project instructions is 30 gb
4. Security Group configuration
```
 SecurityGroup:
    Type: 'AWS::EC2::SecurityGroup'
    Properties:
      VpcId: !Ref VPC
      GroupDescription: Enable SSH access via port 22 and open all insternal ports.
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: 172.18.0.0/24 #Subnet
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: 130.108.0.0/16  # WSU CIDR
        - IpProtocol: tcp
          FromPort: '22'
          ToPort: '22'
          CidrIp: 96.28.112.21/32  # my house
        - IpProtocol: tcp
          FromPort: '80'
          ToPort: '80'
          CidrIp: 0.0.0.0/0
      Tags:
        - Key: Name
          Value: Bennett-CF-SG

```
5.  VpcId: !Ref VPC associates the SG with the VPC, ruel one allows SSH into the subnet ruel 2 allows ssh from wsu ruel 3 allows ssh from my house and the final rule allows http from anywhere
### docker on the EC2
1. run sudo apt-get docker.io
2. there are no other dependencies
3. run which docker
### testing
1. to pull image run sudo docker pull bennett5027/bennett-ceg3120
2. to run a container from the image run "docker run -d -p 80:4200 'image name' running it in detached mode is recomended because if you do not it will stop the container as soon as you exit out of the container prosess
3. how to verify it is serving web content
    * from outside of the container (and instance) you can just use your web browser to connect to the IP address
    * from inside the container curl localhost on port 4200
    * from ouside the container but inside the instance curl localhost
4. To manually refresh
    1. stop the container
    2. deleat the old container
    3. deleat the old image
    4. pull the new image
    5. run the new image
### Scripting Application Refresh
[docker refresh script](codewritenforproject/refresh.sh)
to test I just copied and pasted the script and ran it
