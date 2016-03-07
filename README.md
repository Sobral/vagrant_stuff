# vagrant_stuff
#Tutorial e dicas sobre vagrant


################################################################################
## Configurando o HOST
## Instalando as dependencias

## VirtualBox
sudo apt-get install virtualbox

## Vagrant
## A versao do apt-get nao esta atualizada, evite dor de cabeca e baixe direto
## na url abaixo baixe a versao mais recente do vagrantup

https://www.vagrantup.com/downloads.html

## Para esse tutorial estamos usando o ubuntu numa maquina de 64-bit logo
## usaremos ( para esse caso ) a versao debian 64-bit disponivel no site
## que e o pacote vagrant_1.8.1_x86_64.deb

## Instale o pacote deb baixado do site vagrant
sudo dpkg -i vagrant_1.8.1_x86_64.deb


## Adicione o box ao sistema
## Vamos usar a box servidor-busca.box disponivel no pen-drive como exemplo
##
#   vagrant box add <um_nome_qualquer_para_o_box> <path_para_box_disponivel>
##

vagrant box add servidor servidor-busca.box

################################################################################

## Configurando a maquina virtual
## Os seguintes passos serao usados sempre que for necessario criar uma maquina
# virtual

################################################################################
## Crie um diretorio para identificar uma maquina virtual da outra, os comandos
## do vagrant que usaremos so farao efeito dentro do diretorio criado, e so tera
## efeito na maquina que for instanciada nesse diretorio

mkdir servidor-busca
cd servidor-busca
vagrant init servidor

## dentro do diretorio sera criado o arquivo de configuracao Vagrantfile
## Nele podemos configurar o ip, a quantidade de memoria, a quantidade de cpus e
## tantas outras configuracoes da maquina.

## Abra o arquivo usando algum editor de texto

vim Vagrantfile

## Procure a seguinte linha e a descomente
#   # config.vm.network "private_network", ip: "192.168.33.10"
#   Fique livre para mudar o endereco do ip


## No trecho de codigo abaixo podemos configurar a memoria
# config.vm.provider "virtualbox" do |vb| <<-- descomente aqui
#   # Display the VirtualBox GUI when booting the machine
#   vb.gui = true
#
#   # Customize the amount of memory on the VM:
#   vb.memory = "1024" <<-- descomente aqui e altere a quantidade de memoria
# end <<-- descomente aqui
