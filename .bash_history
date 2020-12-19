sudo yum install -y yum-utils
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
$ sudo yum install docker-ce docker-ce-cli containerd.io
 sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo usermod -aG docker dockerscratch
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker ps
systemctl status docker
systemctl enable docker
systemctl status docker
systemctl start docker
systemctl status docker
dockerp s
docker ps
docker pull mysql
docker images
docker run -d mysql
docker ps
docker ps -l
docker run -d mysql
docker ps
docker ps -l
docker rm aa92b92ec893
docker ps
docker run -d -p 9090:80 mysql
docker ps
docker run -d -p 9090:80 nginx:alpine
docker ps
ip a
mkdir docker-images
cd docker-images/
vim Dockerfile
yum -y install vim
sudo yum -y install vim
vim Dockerfile
cat Dockerfile 
docker build Dockerfile
docker build --tag centos-apache:v1
docker build --tag centos-apache:v1 .
vim Dockerfile 
docker build --tag centos-apache:v1 .
docker ps
docker images
docker run -d --name apache centos-apache
docker run -d --name apache centos-apache:v1
docker ps
docker rm dedd3d562b78
docker stop dedd3d562b78
docker ps
docker run -d --name apache -p 8080:80 centos-apache:v1
docker rm dedd3d562b7818730b51f3d99a546deca7ad19bb55735cb68dcf96f35816a001
docker run -d --name apache -p 8080:80 centos-apache:v1
docker ps
vim Dockerfile2
docker build -t nginx-custom:v1 -f Dockerfile2
docker build -t nginx-custom:v1 -f Dockerfile2 .
docker images
docker ps
docker run -d --name nginz -p 9090:80 nginx-custom:v1
docker stop 6ec96dfe30ac
docker run -d --name nginz -p 9090:80 nginx-custom:v1
docker rm 6ec96dfe30ac
docker run -d --name nginz -p 9090:80 nginx-custom:v1
docker run -d --name nginx -p 9090:80 nginx-custom:v1
docker ps
docker ps -a
vim Dockerfile2 
docker build -t nginx-custom:v2 -f Dockerfile2 .
docker ps
docker rm 5a10e989662e
docker stop 5a10e989662e
docker build -t nginx-custom:v2 -f Dockerfile2 .
docker run -d --name nginx -p 9090:80 nginx-custom:v2
docker rm 5a10e989662e93de01770a90520d14020275a2986c6906de5197833a81335420
docker run -d --name nginx -p 9090:80 nginx-custom:v2
docker ps
vim Dockerfile2
docker run -d --name nginx -p 9090:80 nginx-custom:v2
vim Dockerfile2
docker ps
docker stop
docker stop 4c5c7dd12909
docker build -t nginx-custom:v2 -f Dockerfile2 .
docker run -d --name nginx -p 9090:80 nginx-custom:v2
docker rm 4c5c7dd12909
docker run -d --name nginx -p 9090:80 nginx-custom:v2
cp Dockerfile Dockerfile3
vim Dockerfile3
docker build -t nginx-custom:v3 -f Dockerfile3 .
vim Dockerfile3
docker build -t nginx-custom:v3 -f Dockerfile3 .
docker ps
docker rm apache
docker stop apache
docker ps
docker stop apache
docker ps
docker build -t apache-custom:v3 -f Dockerfile3 .
docker run -d --name apache -p 8080:80 apache-custom:v3
docker rm apache
docker run -d --name apache -p 8080:80 apache-custom:v3
vim Dockerfile3
docker ps
docker stop apache
docker ps
docker rm apache
docker build -t apache-custom:v3 -f Dockerfile3 .
docker run -d --name apache -p 8080:80 apache-custom:v4
docker run -d --name apache -p 8080:80 apache-custom:v3
vim Dockerfile3
docker ps
docker exec -ti apache
docker exec -ti apache bash
vim Dockerfile3
docker ps
docker stop apache
docker ps
docker stop apache
docker rm apache
docker build -t apache-custom:v4 -f Dockerfile3 .
docker run -d --name apache -p 8080:80 apache-custom:v4
docker exec -ti apache bash
shutdown now
docker images
ls
cd docker-images/
ll
vim Dockerfile3
docker ps
docker run -d --name apache -p 8080:80 apache-custom:v4
docker ps -l
docker rm e9e91f538a52131ef423573115438ddced76e2fd14de3e4fd0b38d7cbd486158
docker run -d --name apache -p 8080:80 apache-custom:v4
 ip a
docker ps
docker logs apache
vim Dockerfile3
ll
cd ..
cd docker-images/
mkdir ssl
cd ssl/
vim Dockerfile
cat ../Dockerfile
cat ../Dockerfile2
cat ../Dockerfile3
vim Dockerfile
docker build -t apache_ssl:v1 .
vim Dockerfile
docker build -t apache_ssl:v1 .
vim Dockerfile
docker build -t apache_ssl:v1 .
docker rum -d -p 8082:80 --name apachessl apache_ssl:v1
docker run -d -p 8082:80 --name apachessl apache_ssl:v1
vim Dockerfile
docker ps
docker stop apachessl
docker ps
docker stop apachessl
docker rm apachesl
docker rm apachessl
docker build -t apache_ssl:v2 .
docker p
docker ps
docker run -d -p 8082:80 --name apachessl apache_ssl:v2
vim Dockerfile 
docker ps
docker stop apachessl
docker rm apachessl
docker build -t apache_ssl:v3 .
docker run -d -p 8082:80 --name apachessl apache_ssl:v3
vim Dockerfile 
docker stop apachessl
docker rm apachessl
docker build -t apache_ssl:v4 .
docker run -d -p 8082:80 --name apachessl apache_ssl:v4
docker logs apachessl
vim Dockerfile 
docker ps
docker stop apachessl
docker start apachessl
docker logs apachessl
docker exec -ti apachessl bash
docker logs apachessl
docker ps
vim Dockerfile 
docker ps
docker logs apachessl
vim D
cd docker-images/ssl/
vim Dockerfile 
docker stop apachessl
docker rm apachessl
docker build -t apache_ssl:v5 .
docker run -d -p 8082:80 --name apachessl apache_ssl:v5
docker ps
vim Dockerfile 
docker stop apachessl
docker rm apachessl
docker build -t apache_ssl:v6 .
vim Dockerfile 
docker build -t apache_ssl:v6 .
docker run -d -p 8082:80 --name apachessl apache_ssl:v6
docker log apachessl
docker logs apachessl
vim Dockerfile 
docker stop apachessl
docker rm apachessl
vim Dockerfile 
docker build -t apache_ssl:v6 .
docker run -d -p 8082:80 --name apachessl apache_ssl:v6
docker ps
docker images
ls
ll
cd docker-images/
docker images
history | less
history 
docker images -f apache
docker images -f dangling=true
docker images -f dangling=true -q
echo "$(docker images -f dangling=true -q)"
echo $(docker images -f dangling=true -q)
docker rmi $(docker images -f dangling=true -q)
echo $(docker images -f dangling=true -q)
docker rmif $(docker images -f dangling=true -q)
docker rmi f  $(docker images -f dangling=true -q)
docker rmi $(docker images -f dangling=true -q)
docker ps
docker stop $(docker images -f dangling=true -q)
docker rm $(docker images -f dangling=true -q)
docker rmi $(docker images -f dangling=true -q)
docker rmi 5c926e1f6768
docker rm 5c926e1f6768
docker rmi $(docker images -f dangling=true -q)
mkdir nginx
cd nginx/
ll
vim Dockerfile
docker build -t nginx:v1 .
vim Dockerfile
docker build -t nginx:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
docker build -t nginx-php:v1 .
vim Dockerfile 
vim conf/nginx.conf
ip a
sudo vim conf/nginx.conf
ll
cd co
ll
mkdir conf
cd conf/
vim nginx.conf
cd ..
vim Dockerfile 
docker build -t nginx-php:v2 .
vim Dockerfile 
docker build -t nginx-php:v2 .
docker run -d -p 9090:80 --name nginx-test nginx-php:v2
docker ps
vim Dockerfile 
cd conf/
vim start.sh
cd ..
docker build -t nginx-php:v3 .
docker ps
docker ps -a
docker ps -l
docker build -t nginx-php nginx-php:v3 .
docker run -d -p 9090:80 --name nginx-test nginx-php:v3
docker rmi 974cc509ac2cd49f2de1d79aef427fedbdb9c5d621312176c877b60dee819c2c
docker rm 974cc509ac2cd49f2de1d79aef427fedbdb9c5d621312176c877b60dee819c2c
docker run -d -p 9090:80 --name nginx-test nginx-php:v3
docker ps
docker ps -a
docker run -dti -p 9090:80 --name nginx-test nginx-php:v3
docker stop 59498ab63514645b2a4529827f88e4c7b749e88f910ed49ae4af54718e988fb9
docker run -dti -p 9090:80 --name nginx-test nginx-php:v3
docker stop 59498ab63514645b2a4529827f88e4c7b749e88f910ed49ae4af54718e988fb9
docker emi 59498ab63514645b2a4529827f88e4c7b749e88f910ed49ae4af54718e988fb9
docker rmi 59498ab63514645b2a4529827f88e4c7b749e88f910ed49ae4af54718e988fb9
docker rm 59498ab63514645b2a4529827f88e4c7b749e88f910ed49ae4af54718e988fb9
docker run -dti -p 9090:80 --name nginx-test nginx-php:v3
docker exec -ti nginx-test bash
docker ps
docker run -dti -p 9090:80 --name nginx-test nginx-php:v3
docker stop nginx-test
docker rm nginx-test
docker run -dti -p 9090:80 --name nginx-test nginx-php:v3
docker exec -ti nginx-test bash
vim Dockerfile 
docker stop nginx-test
docker rm nginx-test
docker rmi nginx-test
docker build -t nginx-php nginx-php:v4 .
docker build -t nginx-php:v4 .
docker run -d -p 9090:80 --name nginx-test nginx-php:v4
docker ps
vim Dockerfile 
docker build -t nginx-php:v5 .
docker run -d -p 9090:80 --name nginx-test2 nginx-php:v5
docker ps
docker stop nginx-test
docker run -d -p 9090:80 --name nginx-test2 nginx-php:v5
docker stop
docker stop c875b7cd2b0b89450ecf02733122f05eab0aedf6525a6ea3425da61de2bba916
docker run -d -p 9090:80 --name nginx-test2 nginx-php:v5
docker rm c875b7cd2b0b89450ecf02733122f05eab0aedf6525a6ea3425da61de2bba916
docker run -d -p 9090:80 --name nginx-test2 nginx-php:v5
docker ps
vim Dockerfile 
docker ps
docker stop nginx-test2
docker rm nginx-test2
docker build -t nginx-php:v6 .
docker run -d -p 9090:80 --name nginx-test nginx-php:v6
docker run -d -p 9090:80 --name nginx-tes3 nginx-php:v6
docker ps
docker exec -ti nginx-tes3 bash
vim conf/nginx.conf 
docker exec -ti nginx-tes3 bash
cd docker-images/nginx/
docker exec -ti nginxnew bash
docker rm nginxnew
docker run -dti -p 9090:80 --name nginxnew nginx-php:v9
docker ps
docker exec -ti nginxnew bash
docker exec -ti nginxphp7 bash
cd docker-images/
ll
cat Dockerfile3
cd ssl/
ll
cat Dockerfile 
docker ps
cd ..
cd nginx/
vim 
vim Dockerfile 
ip a
vim Dockerfile 
cd conf/nginx.conf 
vim conf/nginx.conf 
docker ps
docker ps -a
docker ps -l
vim Dockerfile 
docker rm nginx-tes3
docker stop nginx-tes3
docker rm nginx-tes3
docker build -t nginx-php:v7 .
docker run -d -p 8082:80 --name nginxnew nginx-php:v6
docker run -d -p 9090:80 --name nginxnew nginx-php:v6
docker rm c1b3e4cb2de046a55a24139296b66b75b18f296fb2726e12c6167bb47cde1667
docker run -d -p 9090:80 --name nginxnew nginx-php:v6
docker ps
vim Dockerfile 
cd conf/
vim nginx.conf 
docker ps
cd ..
vim Dockerfile 
docker stop nginxnew
docker rm nginxnew
docker build -t nginx-php:v8 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v7
docker ps
vim Dockerfile 
docker run -dti -p 9090:80 --name nginxnew nginx-php:v7
docker rm nginxnew
docker run -dti -p 9090:80 --name nginxnew nginx-php:v7
docker ps
vim Dockerfile 
docker images
docker build -t nginx-php:v9 .
docker rm nginxnew
docker run -dti -p 9090:80 --name nginxnew nginx-php:v8
docker ps
vim Dockerfile 
docker rm nginxnew
docker build -t nginx-php:v10 .
docker run -dti -p 9090:80 --name nginxnew nginx-php:v10
docker ps
vim Dockerfile 
docker rm nginxnew
vim Dockerfile 
docker build -t nginx-php:v10 .
docker images
docker run -dti -p 9090:80 --name nginxnew nginx-php:v10
docker ps
docker rm nginxnew
docker build -t nginx-php:v11 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v11
docker ps
vim Dockerfile 
docker rm nginxnew
docker build -t nginx-php:v12 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v12
docker ps
vim conf/nginx.conf 
docker rm nginxnew
docker stop nginxnew
docker rm nginxnew
docker build -t nginx-php:v13 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v13
docker ps
vim conf/nginx.conf 
docker ps
docker rm nginxnew
docker stop nginxnew
docker rm nginxnew
docker run -d -p 9090:80 --name nginxnew nginx-php:v14
docker build -t nginx-php:v14 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v14
docker ps
vim conf/nginx.conf 
docker stop nginxnew
docker rm nginxnew
docker build -t nginx-php:v15 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v15
docker ps
vim conf/nginx.conf 
docker rm nginxnew
docker stop nginxnew
docker rm nginxnew
docker build -t nginx-php:v16 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v16
docker ps
vim conf/nginx.conf 
docker stop nginxnew
docker build -t nginx-php:v17 .
docker run -d -p 9090:80 --name nginxnew nginx-php:v17
docker rm nginxnew
docker run -d -p 9090:80 --name nginxnew nginx-php:v17
vim conf/nginx.conf 
vim Dockerfile 
docker build -t nginx-php7:v1 .
vim Dockerfile 
vim Dockerfile2
cat Dockerfile
vim Dockerfile2
docker build -t nginx-php7:v1 -f Dockerfile2 .
vim conf/nginx.repo
docker build -t nginx-php7:v1 -f Dockerfile2 .
docker ps
docker run -d -p 9091:80 --name nginxphp7 nginx-php7:v1
vim Dockerfile2
vim conf/nginx.conf 
docker stop nginxnew
docker stop nginxphp7
docker rm nginxphp7
docker build -t nginx-php7:v2 -f Dockerfile2 .
docker run -d -p 9091:80 --name nginxphp7 nginx-php7:v2
cd ..
mkdir multi-stage
cd multi-stage/
vim Dockerfile
docker build -t maven .
 git clone https://github.com/jenkins-docs/simple-java-maven-app.git
yum -y install git
sudo yum -y install git
 git clone https://github.com/jenkins-docs/simple-java-maven-app.git
ll
mv simple-java-maven-app/ app-,avem
mv app-,avem app-maven
ll
vim Dockerfile 
docker build -t maven .
vim Dockerfile 
docker build -t maven .
vim Dockerfile 
docker build -t maven .
docker ps
vim Dockerfile 
docker build -t maven:v2 .
docker images 
docker images |grep maven
docker rmi apache*
docker rmi $(docker images |grep apache)
docker images
docker rmi $(docker images |grep nginx)
docker images
docker rmi $(docker images |grep nginx)
docker images
docker rmi $(docker images |grep nginx-)
docker images
docker rmi $(docker images |grep nginx-)
docker images |grep nginx-
docker images |grep nginx- -q
docker images -f nginx -q
docker images -f nginx 
docker images -f name=nginx 
docker rmi "$(docker images |grep nginx-)"
docker images
shutdown now
cd docker-images/
cat Dockerfile
cat Dockerfile2 
cat Dockerfile3
docker ps
docker ps -a
docker run -d -p 9091:80 --name nginxphp7 nginx-php7:v2
docker start nginxphp7
docker ps
docker pull jenkins/jenkins
docker run -d  jenkins/jenkins
docker ps
docker rename trusting_chandrasekhar jenkins
docker ps
docker rm -f jenkins
docker ps
docker ps -a
docker ps -a | grep jenkins
docker run -d -n jenkins  jenkins/jenkins
docker run -d --name jenkins  jenkins/jenkins
docker ps
docker rm -f jenkins
docker run -d -p 8080:80  --name jenkins  jenkins/jenkins
docker ps
docker rm -f jenkins
docker run -d -p 8080:8080  --name jenkins  jenkins/jenkins
docker ps
cd docker-images/
kk
ll
cat Dockerfile
vim Dockerfile
docker build -t env env
docker build -t env env .
docker build -t env env -f Dockerfile .
docker build -t env -f Dockerfile .
docker run -d --name env env
docker ps
docker pull mysql
docker run --name mysql -e MYSQL_ROOT_PASSWORD=1 -d mysql
docker ps
docker logs -f mysql
docker ps
docker inspect mysql
sudo yum -y install mysql
mysql -u root -h 172.17.0.5
ping 172.17.0.5
mysql -u root -h 172.17.0.5
mysql -u root -h 172.17.0.5 -p 1
mysql -u root -h 172.17.0.5 -p 
docker run --name mysql -e MYSQL_ROOT_PASSWORD=1 -d mysql
docker ps
mysql -u root -h 172.17.0.5 
docker run --name mysql5 -e MYSQL_ROOT_PASSWORD=1 -d mysql:5.7
docker logs -f mysql5
docker rm -f mysql
docker inspect mysql
docker inspect mysql5
mysql -u root -h 172.17.0.6
mysql -u root -h 172.17.0.6 -p
docker rm -f mysql5
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=dockerdb -e MYSQL_USER=docker_user -e MYSQL_PASSWORD=1234 -d mysql:5.7
docker ps
docker inspect mysql
docker logs mysql
mysql -u root -h 192.168.189.134:3306 -p
mysql -u root -h 127.0.0.1 -p1
docker ps
docker ps -a
docker run --name postgres -e POSTGRES_PASSWORD=1 -d postgres
docker rm -f postgres
docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=1 -e POSTGRES_USER=dockeruser -e POSTGRES_DB=dockerdb -e POSTGRES_PASSWORD=1 -d postgres
docker ps
free -h
docker images
docker rmi (docker images | grep nginx-)
docker rmi $(docker images | grep nginx-)
docker rmi "$(docker images | grep nginx-)"
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'nginx-')
docker images
docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'nginx-')
docker rmi -f $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'nginx-')
docker ps
docker images
free -h
docker rmi -f $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'maven')
free -h
docker images
docker rmi -f $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'mysql')
docker images
docker rmi $(docker images -f dangling=true -q)
docker imags
docker images
docker rmi $(docker images -f dangling=true -q)
docker rmi -f $(docker images -f dangling=true -q)
docker rmi $(docker images -f dangling=true -q)
docker images
docker ps
docker rmi -f $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'apache')
docker images
free -h
docker stats 
ll /var/lib/
docker ps
shutdown now
man docker
docker exec -ti jenkins bash
docker exec -ti env bash
docker ps
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=dockerdb -e MYSQL_USER=docker_user -e MYSQL_PASSWORD=1234 -d mysql:5.7
docker start mysql
docker ps
docker exec -ti mysql bash
mysql -u root -h 172.17.0.6 -p1
docker inspect mysql:5.7
docker ps
mysql -u root -h 127.0.0.1 -p1
docker rm -f mysql
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=dockerdb -e MYSQL_USER=docker_user -e MYSQL_PASSWORD=1234 -d mysql:5.7
mysql -u root -h 127.0.0.1 -p1
docker ps
mysql -u root -h 127.0.0.1 -p1
docker rm -f mysql
docker ps
cd /mnt/
mkdir mysql
sudo mkdir mysql
ll 
docker run -d --name mysql -v /mnt/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1  mysql:5.7
docker ps
cd mysql/
ll
mysql -u root -h 127.0.0.1 -p1
docker rm -f mysql
docker run -d --name mysql -v /mnt/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1  mysql:5.7
mysql -u root -h 127.0.0.1 -p1
docker volume create mysqlvolume
docker rm -f mysql
docker run -d --name mysql -v mysqlvolume:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1  mysql:5.7
mysql -u root -h 127.0.0.1 -p1
docker rm -f
docker rm -f mysql
docker run -d --name mysql -v mysqlvolume:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1  mysql:5.7
mysql -u root -h 127.0.0.1 -p1
cd /var/lib/docker/
ll
sudo ll
sudo ls
cd vo
cd volumes
sudo cd volumes
ls
sudo su
dockerps
docker ps
docker inspect mysql
ll
cd
cd docker-images/
ll
docker info | grep -i root
docker ps
docker rm -f mysql
docker volume rm $(docker volume ls -f=dangling=true)
docker volume ls
docker volume rm $(docker volume ls -f=dangling=true)
docker volume rm 7ce96b594c3b9d99f1e6cdd1605d1a0bdb49a217e69695d6a675afd19f02da95
docker run --name mongo -v /mnt/mongo:/etc/mongo -d mongo
docker ps
docker rm -f mongo
docker run --name mongo -v /mnt/mongo:/etc/mongo -d -p 27017:27017 mongo
docker ps
docker exec -ti mongo
docker exec -ti mongo bash
docker run -p 8080:8080 -v /tmp/jenkins:/var/jenkins_home jenkins/jenkins
sudo docker run -p 8080:8080 -v /tmp/jenkins:/var/jenkins_home jenkins/jenkins
cd
cd /mnt
mkdir jenkins
sudo mkdir jenkins
sudo docker run -p 8080:8080 -v /tmp/jenkins:/var/jenkins_home jenkins/jenkins
sudo docker run -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
docker rm -f jenkins
sudo docker run -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
ll
sudo chown 1000:1000 jenkins
sudo docker run -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
docker rm -f jenkins
sudo docker run -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
sudo docker run -d -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
docker run -d -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
docker rm -f jenkins
docker run -d -p 8080:8080 --name jenkins -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
dopcker ps
docker ps
cat /tmp/jenkins/var/jenkins_home/secrets/initialAdminPassword
cat /tmp/jenkins/secrets/initialAdminPassword
cat /mnt/jenkins/secrets/initialAdminPassword
docker rm -f jenkins
docker ps
ip a
ip a 
ip a |grep docker
docker network inspect
docker inspect network
docker network inspect bridge
docker network ls
docker network inspect bridge
ping 172.0.0.1
ping 172.17.0.1
docker ps
docker inspect mongo
ping 172.17.0.2
docker network create 
docker network create -d bridge --subnet 172.18.0.0/16 --gateway 172.18.0.1 new_network
docker network rm new_network
docker network create -d bridge --subnet 172.18.0.0/16 --gateway 172.18.0.1 new_network
docker network ls
docker run --network new_network -d -p 8080:8080 --name jenkins2 -v /mnt/jenkins:/var/jenkins_home jenkins/jenkins
docker network inspect new_network
docker ps
docker rm -f mongo
docker run --network new_network --name mongo -v /mnt/mongo:/etc/mongo -d -p 27017:27017 mongo
docker ps
docker network inspect new_network
docker exec -ti mongo bash
docker exec -ti jenkins2 bash
shutdown now
docker-compose
mkdir docker-compose
cd docker-compose/
vim docker-compose.yml
docker compose up -d
docker-compose up -d
docker rm -f nginx
docker-compose up -d
docker ps
docker-compose down
vim docker-compose.yml
docker ps
docker-compose up -d
docker ps
mysql -u root -h 127.0.0.1
vim docker-compose.yml 
docker-compose down
docker-compose up -d
mysql -u root -h 127.0.0.1
mysql -u root -h 127.0.0.1 -p1
vim docker-compose.yml 
mysql -u root -h 127.0.0.1 -p1
docker volumes ls
docker volume ls
vim docker-compose.yml 
docker-compose down
docker-compose up -d
