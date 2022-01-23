#!/bin/bash
# script de instalacao de programas .deb

## atualiza pacotes
sudo apt update

#instala snap store
sudo apt install snapd -y

## editores de codigo
### vs-code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add – -y
sudo add-apt-repository “deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main” -y
sudo apt install code -y

### ecplipse
sudo snap install eclipse --classic

### STS
wget https://download.springsource.com/release/STS4/4.13.0.RELEASE/dist/e4.22/spring-tool-suite-4-4.13.0.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz
sudo mv spring-tool-suite-4-4.13.0.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz /opt/
cd /opt/
sudo tar -xvf spring-tool-suite-4-4.13.0.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz
cd sts-4.13.0.RELEASE

### cria arquivo atalho no menu
sudo nano /usr/share/applications/STS.desktop

### colocar isso dentro do arquivo
[Desktop Entry]
Name=SpringSource Tool Suite
Comment=Spring Tool Suite
Exec=/opt/sts-4.7.0.RELEASE/SpringToolSuite4
Icon=/opt/sts-4.7.0.RELEASE/icon.xpm
StartupNotify=true
Terminal=false
Type=Application
Categories=Development;IDE;Java;

## linguagens de programacao
cd

### python
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y

### node
sudo apt install nodejs -y
sudo apt install npm -y

### java
sudo apt install default-jre -y
sudo apt install default-jdk -y

### escolhe a versao do java instalada para ser utilizada
sudo update-alternatives --config java
sudo update-alternatives --config javac

### precisa colocar o JAVA_HOME no path
sudo update-alternatives --config java
#### copia o caminho do java para colocar no path
sudo nano /etc/environment
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
source /etc/environment
echo $JAVA_HOME

### mostra a versao dos programas instalados
echo "Java:"                >> Documentos/versoes.txt 
java --version              >> Documentos/versoes.txt 
echo "Javac:"              >> Documentos/versoes.txt 
javac --version            >> Documentos/versoes.txt 
echo "Pyhon:"           >> Documentos/versoes.txt 
python3 --version       >> Documentos/versoes.txt 
echo "PIP:"                 >> Documentos/versoes.txt 
pip3 --version              >> Documentos/versoes.txt 
echo "Node:"                >> Documentos/versoes.txt 
node --version              >> Documentos/versoes.txt 
echo "NPM:"               >> Documentos/versoes.txt 
npm --version               >> Documentos/versoes.txt 
