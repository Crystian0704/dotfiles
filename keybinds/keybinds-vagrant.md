# Vagrant configuration Examples

# Usando Vagrant Hub

| Descrição | Comando |
| --- | --- |
| Iniciar um aquivo de configuração | `vagrant init` |
| Iniciar com uma configração mínima | `vagrant init --m` |
| Iniciar um aquivo de configuração com uma box específica | `vagrant init ubuntu/trusty64` |
| Iniciar um aquivo de configuração com uma box específica e uma versão específica | `vagrant init ubuntu/trusty64 --box-version 20160801.0.0` |
| Iniciar um aquivo de configuração com uma box específica e uma versão específica e um nome específico | `vagrant init ubuntu/trusty64 --box-version 20160801.0.0 --name vagrant` |    
| Iniciar um aquivo de configuração com uma box específica e uma versão específica e um nome específico e um provider específico | `vagrant init ubuntu/trusty64 --box-version 20160801.0.0 --name vagrant --provider virtualbox` |
| Iniciar uma máquina virtual | `vagrant up` |
| Parar uma máquina virtual | `vagrant halt` |
| Destruir ambiente e configurações da máquina virtual | `vagrant destroy` |
| Acessar a máquina virtual | `vagrant ssh` |
| Listar máquinas virtuais | `vagrant global-status` |
| Listar máquinas virtuais em execução | `vagrant global-status --prune` |

# Configurações de Vagrantfile

## Configurações básicas

'''

Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" 
end

'''
