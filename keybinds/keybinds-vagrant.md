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

```ruby

Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
end

```

## Configurações com versão da box

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
end

```

## Configurações com nome da máquina virtual

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
end

```

## Configurações com nome da máquina virtual e provider

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
  end
end

```

## Configurações com nome da máquina virtual, provider e memória

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
  end
end

```

## Configurações com nome da máquina virtual, provider, memória e cpu

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
    vb.cpus = "2" # quantidade de cpus da máquina virtual
  end
end

```

## Configurações com nome da máquina virtual, provider, memória, cpu e ip

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
    vb.cpus = "2" # quantidade de cpus da máquina virtual
  end
  config.vm.network "private_network", ip: "
end

```

## Configurações com nome da máquina virtual, provider, memória, cpu, ip e porta

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
    vb.cpus = "2" # quantidade de cpus da máquina virtual
    end
    config.vm.network "private_network", ip: "
    config.vm.network "forwarded_port", guest: 80, host: 8080
    end
end

```

## Configurações com nome da máquina virtual, provider, memória, cpu, ip, porta e compartilhamento de pasta

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
    vb.cpus = "2" # quantidade de cpus da máquina virtual
    end
    config.vm.network "private_network", ip: "
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.synced_folder ".", "/vagrant", disabled: true
    end
end

```
## Configurações com nome da máquina virtual, provider, memória, cpu, ip, porta, compartilhamento de pasta e provisionamento e executando scrpit

```ruby
Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/trusty64" # box do vagrant hub
  config.vm.box_version = "20160801.0.0" # versão da box
  config.vm.hostname = "vagrant" # nome da máquina virtual
  config.vm.provider "virtualbox" do |vb| # provider
    vb.name = "vagrant" # nome da máquina virtual
    vb.memory = "1024" # memória da máquina virtual
    vb.cpus = "2" # quantidade de cpus da máquina virtual
    end
    config.vm.network "private_network", ip: "
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.provision "shell", path: "script.sh"
    end
end

```










