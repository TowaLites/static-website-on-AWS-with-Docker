# create a repository to store the docker image in docker hub

# launch an ec2 instance. open port 80 and port 22

# install and configure docker on the ec2 instance
sudo su -
yum update -y
yum install docker -y
systemctl start docker.service
systemctl enable docker.service
usermod -a -G docker ec2-user
docker info

# create a dockerfile
 vi Dockerfile 

# build the docker image
docker build -t techmain .

# login to your docker hub account
docker login --username tsofiyat

# use the docker tag command to give the image a new name
docker tag techmax tsofiyat/techmax

# push the image to your docker hub repository
docker push tsofiyat/techmax

# start the container to test the image 
docker run -td --name techmaincont -p 80:80 linux:techmaain

# run this command to verify
docker run -d --name techmax-container -p 80:80 static-app:techmax
