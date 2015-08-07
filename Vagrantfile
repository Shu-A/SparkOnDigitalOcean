VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
    config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
    config.vm.box = "CentOS-6.5-x86"
 
    (0..3).each do |num|
        config.vm.define "hdp#{num}" do |c|
            c.vm.box = "CentOS-6.5-x86"
            c.vm.hostname = "hdp#{num}.vagrant.com"
            c.vm.network :private_network, ip: "192.168.0.10#{num}", virtualbox__intnet: "intnet"
            c.vm.provider :virtualbox do |v|
                v.name = "hdp#{num}"
                v.memory = 512

                file_to_disk = "./.tmp/disk_" + c.vm.hostname + ".vdi"
                unless File.exist?(file_to_disk)
                    v.customize ['createhd', '--filename', file_to_disk, '--size', 10 * 1024]
                    v.customize ['storageattach', :id, '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
                end
            end
        end
    end
end

