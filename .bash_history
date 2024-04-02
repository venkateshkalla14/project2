sudo apt install default-jdk
swapoff -a   
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

sudo sysctl --system
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \

"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
docker --version 
sudo apt-get update
sudo apt upgrade
sudo apt-get install -y apt-transport-https ca-certificates curl
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo rm /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
sudo mkdir /etc/containerd
sudo sh -c 'sudo containerd config default > /etc/containerd/config.toml'
sudo sed -i 's/            SystemdCgroup = false/            SystemdCgroup = true/' /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl restart kubelet
sudo kubeadm config images pull
sudo kubeadm init --pod-network-cidr=192.168.0.0/16
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/tigera-operator.yaml
curl https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/custom-resources.yaml -O
kubectl create -f custom-resources.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/tigera-operator.yaml
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/tigera-operator.yaml
kubectl create -f custom-resources.yaml
kubectl get nodes
sudo apt install git
sudo apt install default-jdk
git clone https://github.com/venkateshkalla14/gym-management-software.git
ls
cd gym-management-software/
ls
cd gym-management-software/
ls
cd ..
cd gymproject.sql 
cat gymproject.sql 
hostnamectl set-hostname master1
bash
ls
nano Dockerfilegym
ls
cd Dockerfilegym.save
nano Dockerfilegym.save
ls
rm -rf*
prune rm -rf*
cd ..
ls
cd
ls
rm -rf *
ls
git clone https://github.com/venkateshkalla14/gym-management-software.git
ls
cd gym-management-software/
ls
cd gym-management-software/
ls
cd src
ls
cd com
ls
cd IMG
LS
ls
cd ..
ls
cd Objects/
ls
cd ..
ls
cd
kubectl get nodes
ls
cd gym-management-software/
ls
cd gym-management-software/
ls
cd nbproject/
ls
cd ..
ls
cd src/
ls
cd com/
ls
cd Objects/
LS
ls
cd ..
ls
cd ..
ls
cd ..
ls
cat build.xml 
cd
clear
git clone http://192.168.29.48:3000/brrsoftwares/Ofbiz_Project.git
sudo apt install maven
mv -v
mvn -v
clear
ls
cd gym-management-software/
ls
cd dist
ls
cd ..
ls
nano Dockerfilegym
ls
docker build -t gym-management-software .
cd
docker build -t gym-management-software .
ls
cd gym-management-software/
ls
cd dist
ls
pwd
cd ..
ls
nano Dockerfilegym 
docker build -t gym-management-image .
cd /root/gym-management-software
LS
ls
nano Dockerfilegym 
docker build -t gym-management-image .
ls
mv Dockerfilegym Dockerfile
ls
docker build -t gym-management-image .
cp /root/gym-management-software/dist/gym-management-software.jar .
ls
docker build -t gym-management-image .
cat Dockerfile 
nano Dockerfile 
docker build
docker build -t gym-management-image .
docker run -d -p 8080:8080 --name gym-management-container gym-management-image
kubectl get images
kubectl get pods
docker images
docker ps
docker start gym-management-container
docker ps
docker run -d -p 8080:8080 --name gym-management-container gym-management-image
docker logs gym-management-container
docker start -i gym-management-container
docker start gym-management-container
docker ps -a
docker start d4029df49b34
docker ps -a
docker images
docker start gym-management-container
docker ps -a
docker logs gym-management-container
ls
cd gym-management-software/
ls
ls
cd gym-management-software/
ls
nano Dockerfile 
docker build -t gym-management-image .
nano Dockerfile 
docker build -t gym-management-image .
clear
kubectl get pods
sudo swapoff -a
kubectl get pods
kubectl get nodes
kubectl get pods
kubectl get pods -A --watch
kubectl get pods -A
kubectl get pods
kubectl get pod
kubectl get svc
docker images
docker container
docker ps -a
docker logs d4029df49b34
docker ps -a
java -v
java -version
ls
cd gym-management-software/
ls
nano Dockerfile 
docker build -t gym-management-image .
docker run --name gym-management-container -d gym-management-image
docker images
rm -rf 39e2ba095b03
rm -rf b2342a3720b2
docker images
docker rmi b2342a3720b2 39e2ba095b03
docker images
docker rmi 39e2ba095b03
docker rmi -f 39e2ba095b03
docker images
docker ps 
docker ps -a
docker container ls
docker container ls -a
docker rm gym-management-container
docker container ls -a
docker run --name gym-management-container -d gym-management-image
docker logs gym-management-container
docker exec -it gym-management-container bash
docker restart gym-management-container
docker exec -it gym-management-container bash
docker start gym-management-container
docker exec -it gym-management-container bash
docker ps -a
docker start gym-management-container
docker ps -a
docker logs gym-management-container
docker images
clear
docker images
docker rmi 764a04af3eff
docker rmi -f 764a04af3eff
docker rmi -f a26b98313084
docker ps -a
docker rm 27a2fe6da514
docker ps -a
ls
nano Dockerfile 
docker build -t gymsoftwareimage .
docker run --name gym-management-container -d gymsoftware-name
docker run --name gym-management-container -d gymsoftware -name
docker run --name gym-management-container -d gymsoftwareimage
docker ps -a
docker start 216f1899ae37
docker ps -a
docker inspect 216f1899ae37
ls
nano Dockerfile 
docker images
docker rmi 0fa97f984be6
docker rmi -f 0fa97f984be6
docker build -t gymsoftwareimage .
docker images
docker ps -a
docker rm 216f1899ae37
docker run --name gym-management-container -d gymsoftwareimage
docker ps -a
docker start e830aebece4b
docker ps -a
clear
docker ps -a
docker logs e830aebece4b
docker run --name gym-management-container -e JAVA_OPTS="-Djava.awt.headless=true" -d gymsoftwareimage
docker rm e830aebece4b
docker ps -a
docker run --name gym-management-container -e JAVA_OPTS="-Djava.awt.headless=true" -d gymsoftwareimage
docker ps -a
docker start e5f643166142
docker ps -a
ls
mkdir project2
ls
cd project2/
ls
nano gym-software-java
ls
cat gym-software-java 
clear
ls
clear
cd
ls
git init
git add .
ls
cd project2/
git add .
git commit -m "Initial commit"
git push origin main
git config user.email "venkateshkalla1111@gmail.com"
git config user.name "venkateshkalla14"
git commit -m "Initial commit"
git push origin main
git branch
git push origin master
git remote add origin https://github.com/venkateshkalla14/project2
git push -u origin master
