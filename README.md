# dockerprojectscratch


DOCKER STEPS CENTOS

https://docs.docker.com/engine/install/centos/#installation-methods


#logout after this
```sudo usermod -aG docker isken  ```

#docker compose

https://docs.docker.com/compose/install/

```docker pull ```

# to see docker location
```docker info | grep -i root``` 

```docker-compose up -d```

 ```docker ps```

```docker logs -f jenkins```

```docker-compose stop```

#container terminaline gitmek icin
```docker exec -ti jenkins bash```


#scriptleri jenkins'e kopyalamak icin

```docker cp script.sh jenkins:/tmp/script.sh```


#container'dan makinemize kopyalamak icin
```docker cp jenkins:/tmp/script.sh ./newscript.sh```

os images are root by default dont have sudo installed 


#UYGULAMA PORTU BILMIYORSAN DOCKERFILELERDEN BIRINE GIR VE EXPOSE ARAT.


```docker run -d -p 9090:80 --name nginx nginx:alpine``` --burada 9090 makinenin portu bunu containerdaki 80 portuna forward ediyoruz disaridan bizim makinenin 9090 a gidince bu port containerin 90 ina yonlendirecek.

#dockerfile calistirmak
```docker build --tag centos-apache:v1 .```

#dockerfile adi farkli oldugunda

```docker build -t nginx-custom:v1 -f Dockerfile2 . ```

#.dockerignore dockerfile den onceki dizinde olmali boylece build ederken sonda . koyarsak context olarak diger dizinleri de almaz icine de kullanmasini istemedigimiz dizinleri alt alta yaziyoruz.

#docker imagelari read only olduklari icin ayni tag ile build edersek yeni image calistirir eski isimdeki none olarak degisir buna dangling image denir. versiyonlama bunun onune gecer

 ```docker images -f dangling=true```

 ``` docker rmi $(docker images -f dangling=true -q)```

```docker run -dti -p 9090:80 --name nginx nginx``` #terminali acik tutar process calismasa da icine girebiliriz.

nginx dosyalari nginx -t ile kontrol et


multistage buildlerde buyuk yer kaplayan imageden sadece cikan jar vs onlari alip alpine imajina atabiliriz size olarak rahatlatir.

maven icin maven imajindan jari olusturup sonra jdk alpine a kopyaliyoruz 20 mb bir fark ediyor

```docker rm -f``` #force olarak containeri kapatir stop ve rm yapmamak icin kisayol


```docker rename oldname newname``` #container ismi degistirmek

0.0.0.0:9091->80/tcp  # 0 olan kisim tum interfaceleri dinliyor demek 9091 makine portu bunu containerdaki 80 portuna mapliyor.

echo $variable #dockerfilede declare ettigimiz herhangi bir degisken degerini containerda gormek icin klasik yol

-e "test=1234" #run yaparken bunu koyarsak run olduktan sonra yeni env variable containera declare edilmis olur , birden fazla kullanilabilir, ayni isimde varsa dockerfiledekinin ustune overwrite eder

```docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1 -e MYSQL_DATABASE=dockerdb -e MYSQL_USER=docker_user -e MYSQL_PASSWORD=1234 -d mysql:5.7```

```docker inspect mysql ```# configleri gosterir disaridan baglanmmmak iicn ip yi aliyoruz.  
```mysql -u root -h 172.17.0.6 -p``` #port ile run edersek bunlara gerek kalmaz direkt port host ip ve port ile baglanabiliriz.

```mysql -u root -h 127.0.0.1 -p$pwd``` #port verdikten sonra ister localhost ister host ip adresi verebiliriz.



#postgresql
 ```docker run --name postgres -e POSTGRES_PASSWORD=1 -e POSTGRES_USER=dockeruser -e POSTGRES_DB=dockerdb -e POSTGRES_PASSWORD=1 -d postgres```

```psql -d dockerdb -U dockeruser``` #DB YE GIRMEK ICIN


```docker rmi -f $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'nginx-')``` #toplu image silmek icin
```
run --memory "200mb" # kullanacagi rami kisitliyoruz.
run --cpuset-cpus [0-3],[0-3] # kullanabilecegi cpu sayisi
```
```docker commit containerid imagename:v1``` # kullanista olan bir containeri imaja cevirir boylece icinde yapilan eklemeler ve degisiklikler kalici olur.

run da image verdikten sonra verilen arguman CMD yi overwrite etmek icin kullanilir.

--rm #calistirdiktan sonra containeri remove eder

vim /lib/systemd/system/docker.service #docker root dizini degistirmek icin burada ExecStart satirina --data-root dizin/docker ekliyoruz.

sonra /var/lib/docker'i dizin/docker'a tasiyoruz. sonra docker start verebiliriz

VOLUMES

#need to understand which folder we want to save
# to see for  which volume to mount google docker 'imagename'

ornegin mysql verileri /var/lib/mysql altinda tutuyor biz localde herhangi bir dizin altinda dosya yaratiyoruz 
/mnt/mysql ornegin ve bunu container icindeki /var/lib/mysql e bindliyoruz.

```docker run -d --name mysql -v /mnt/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1  mysql:5.7```

```docker volume create new_volume ```# NORMAL volume yaratir bind volume da oldugu gibi dizine atamaz direkt dockerin yonettigi bir volume yaratir

```docker volume ls``` #list normal volumes

/var/lib/docker/volumes de saklar

isimsiz mount verirsek bunu da inspect de bulabiliriz anonymous volume denir

rm -fv dockerin yarattigi normal volume lari siler

docker info | grep -i root # root dizini nerde oldugunu verir

```docker volume ls -f=dangling=true``` # dangling volumeler

```docker volume rm $(docker volume ls -f=dangling=true) ```#silmek icin

touch: cannot touch '/var/jenkins_home/copy_reference_file.log': Permission denied
Can not write to /var/jenkins_home/copy_reference_file.log. Wrong volume permissions?

boyle oldugu zaman container iicnde id ile uid sini al sonra dizini o idye chownla jenkins host dizini 1000 olmali




DOCKER NETWORKS

 docker0 networku default bridged network containerlar arasi iletisimi saglar
```
docker network ls |grep bridge
docker network inspect bridge
```
"Config": [
                {
                    "Subnet": "172.17.0.0/16", #containerlara atanabilecek ipler
                    "Gateway": "172.17.0.1" #internete cikis ipsi
                }

```docker exec jenkins bash -c "ping 172.17.0.2"``` #default networkde ip ile pingleniyor, name ile degil bash yemezse sh da denenir

 ```docker network create -d bridge --subnet 172.18.0.0/16 --gateway 172.18.0.1 new_network ```# yeni bir network yaratmak -d yazmasak da default bridge
 
 ```docker network rm new_network```

 ```docker run --network new_network -d``` #yeni networku containerlarda kullanmak 

```docker network connect new_network mongodb ```#farkli networkdeki containerlar arasinda iletisim saglamak icin

```docker network disconnect new_network mongodb```

--ip 172.18.0.3 eklersek static ip vermis oluruz.

--network host dersek network bakimindan hosta ait olan herseyi containera vermis oluruz.

DOCKER COMPOSE 

compose consists of version: 
                    services:
                    volumes:
                    networks:
https://docs.docker.com/compose/compose-file/compose-versioning/

-d is default in compose so we dont need to specify it

https://github.com/compose-spec/compose-spec/blob/master/spec.md # yml icinde kullanilabilecek seyler

```docker-compose up -d
docker-compose down #container docker compose ile yaratildiysa compose ile kill edilmeli
```

env_file: .env #degisken atarken bu sekilde file'dan vermek daha saglikli, compose ile ayni dizinde olur genelde, degilse tam dizini ver

```docker-compose -f /tmp/docker-compose-mysql.yml down``` # baska bir docker compose dosyasina down vermek iicn


```
version: '3'
services:
   web:    #web yerine hersey gelebilir calisacak uygulama icin isim
      container_name: nginx # --name yerine
      ports: # -p yerine
        - "8080:80"
      image: nginx:alpine
      networks:
         - net
   database:    
      container_name: mysql 
      ports: 
        - "3306:3306"
      image: mysql:5.7  
      volumes:
      - "mysql_volume:/var/lib/mysql" # "/mnt/mysql:/var/lib/mysql" de olabilirdi
      environment:
        - MYSQL_ROOT_PASSWORD=1
        - SHOW=true
      networks:
         - net
volumes:
    mysql_volume: #docker volume create mysql_volume
networks: 
   net:   #docker network create net  

```







