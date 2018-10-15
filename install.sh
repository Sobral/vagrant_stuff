echo "Atualizando APT-GET"

#apt-get update

echo "Instalando VirtalBox"
apt-get install virtualbox

version=$1

url_vagrant='https://releases.hashicorp.com/vagrant/'$version

echo "Baixando pacote de instalacao Vagrant: versao "$version

if [ `uname -m` = 'x86_64' ];
then
    package='vagrant_'$version'_x86_64.deb'
else
    package='vagrant_'$version'_i686.deb'
fi

#wget $url_vagrant/$package
echo $url_vagrant/$package

echo "Instalando Vagrant"
dpkg -i $package
