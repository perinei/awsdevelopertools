#install AWS developer tools on Ubuntu

echo "Updading the system"
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

echo "Installing curl"
sudo apt install curl -y

echo "Installing GIT"
sudo apt install git

echo "installing Nodejs"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installing AWS CDK"
npm install aws-cdk-lib
sudo npm install -g aws-cdk -y

echo "Installing docker"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install ca-certificates gnupg lsb-release curl -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo apt install docker.io -y


echo "Installing SAM"
wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
sudo ./sam-installation/install


echo "Installing AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

echo "display version"
echo ""
echo "NODE"
node --version
echo ""
echo "CDK"
cdk --version
echo ""
echo "Docker"
docker --version
echo ""
echo "SAM"
sam --version
echo ""
echo "AWS CLI"
aws --version
echo ""
echo "All Done"