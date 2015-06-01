VAGRANTFILE_API_VERSION = "2"

Dotenv.load

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box       = "CentOS6.5"

    (0..3).each do |num|
        config.vm.define "spark-test#{num}" do |node|
            node.vm.provider :digital_ocean do |provider, override|
                override.vm.hostname            = "spark-test#{num}"
                override.vm.box                 = "digital_ocean"
                override.vm.box_url             = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
                override.ssh.private_key_path   = ".ssh/id_rsa"
                #provider.token                  = "#{ENV['DIGITALOCEAN_TOKEN']}"
                provider.token                  = "659686f74db7d04e87618834aba8cce49b56f254479335c7083bb8e4c6ad3dd5"
                provider.image                  = "centos-6-5-x64"
                provider.region                 = "nyc3"
                provider.size                   = "1gb"
                provider.ssh_key_name           = "apple"
            end
        end
    end

end

