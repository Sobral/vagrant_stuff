echo "Atualizando APT-GET" 

apt-get update

echo "Instalando VirtalBox"
apt-get install virtualbox

url_vagrant='https://releases.hashicorp.com/vagrant/1.8.1'

echo "Baixando pacote de instalacao Vagrant: versao 1.8.1"

if [ `uname -m` = 'x86_64' ];
then
    versao='vagrant_1.8.1_x86_64.deb'
else 
    versao='vagrant_1.8.1_i686.deb'
fi

wget $url_vagrant/$versao
echo $url_vagrant/$versao

echo "Instalando Vagrant"
dpkg -i $versao
