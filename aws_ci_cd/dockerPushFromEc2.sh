   3  sudo yum install docker
    4  sudo service docker start
    5  sudo usermod -a -G docker ec2-user
    6  man usermod 
    7  docker ps
    8  sudo service docker status
    9  docker info
   10  touch Dockerfile
   11  nano Dockerfile 
   12  vim Dockerfile 
   13  docker build -t hello-world .
   14  sudo service docker restart
   15  sudo service docker status
   16  docker build -t hello-world .
   17  sudo docker build -t hello-world .
   18  docker images
   19  sudo usermod -a  ec2-user -G docker
   20  docker images
   21  groups ec2-user
   22  ls -l /var/run/docker.sock
   23  getenforce 
   24  sudo chmod 660 /var/run/docker.sock
   25  ls -l /var/run/docker.sock
   26  docker images
   27  sudo docker images
   28  sudo docker run -t -i -p 80:80 hello-world 
   29  sudo docker ps
   30  aws ecr create-repository --repository-name hello-repository --region us-east-1
   31  docker tag hello-world 529088252209.dkr.ecr.us-east-1.amazonaws.com/hello-repository
   32  sudo docker tag hello-world 529088252209.dkr.ecr.us-east-1.amazonaws.com/hello-repository
   33  #aws ecr get-login-password --region region | docker login --username AWS --
   34  password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
   35  aws ecr get-login-password --region region 
   36  sudo docker push 529088252209.dkr.ecr.us-east-1.amazonaws.com/hello-repository
   37  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 529088252209.dkr.ecr.us-east-1.amazonaws.com
   38  sudo docker push 529088252209.dkr.ecr.us-east-1.amazonaws.com/hello-repository
   39  aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 529088252209.dkr.ecr.us-east-1.amazonaws.com
   40  sudo docker push 529088252209.dkr.ecr.us-east-1.amazonaws.com/hello-repository
