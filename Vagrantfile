VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
    config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
    config.vm.box = "CentOS-6.5-x86"
 
    (0..3).each do |num|
        config.vm.define "spark-test#{num}" do |node|
            node.vm.provider :digital_ocean do |provider, override|
                override.vm.hostname            = "shua_hadoop_#{num}"
                override.vm.box                 = "digital_ocean"
                override.vm.box_url             = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
                override.ssh.private_key_path   = ".ssh/id_rsa"
                provider.token                  = "#{ENV['DIGITALOCEAN_TOKEN']}"
                provider.image                  = "centos-6-5-x64"
                provider.region                 = "nyc3"
                provider.size                   = "8gb"
                provider.ssh_key_name           = "apple"
            end
        end
    end
end

