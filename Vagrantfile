Vagrant.configure("2") do |config|

    config.vm.provider "hyperv" do |hv|
        hv.cpus = "4" 
        hv.memory = "4096" 
        hv.maxmemory = "4096" 
    end
    # Master node
    config.vm.define "master01" do |master01|
        master01.vm.hostname = "k8s-master-01"
        master01.vm.box = "generic/ubuntu2204" 
        master01.vm.provision "file", source: "./script-change-ip.sh", destination: "script-change-ip.sh"
        master01.vm.provision "shell", inline: "chmod +x ./script-change-ip.sh && sudo ./script-change-ip.sh 10.10.0.11"
    end
    config.vm.define "master02" do |master02|
        master02.vm.hostname = "k8s-master-02"
        master02.vm.box = "generic/ubuntu2204" 
        master02.vm.provision "file", source: "./script-change-ip.sh", destination: "script-change-ip.sh"
        master02.vm.provision "shell", inline: "chmod +x ./script-change-ip.sh && sudo ./script-change-ip.sh 10.10.0.12"
    end
    config.vm.define "master03" do |master03|
        master03.vm.hostname = "k8s-master-03"
        master03.vm.box = "generic/ubuntu2204" 
        master03.vm.provision "file", source: "./script-change-ip.sh", destination: "script-change-ip.sh"
        master03.vm.provision "shell", inline: "chmod +x ./script-change-ip.sh && sudo ./script-change-ip.sh 10.10.0.13"
    end
    config.vm.define "worker01" do |worker01|
        worker01.vm.hostname = "k8s-worker-01"
        worker01.vm.box = "generic/ubuntu2204" 
        worker01.vm.provision "file", source: "./script-change-ip.sh", destination: "script-change-ip.sh"
        worker01.vm.provision "shell", inline: "chmod +x ./script-change-ip.sh && sudo ./script-change-ip.sh 10.10.0.21"
        worker01.vm.provider "hyperv" do |hv|
            hv.memory = 6144
            hv.cpus = 4
            hv.maxmemory = 8192
        end
    end
    config.vm.define "worker02" do |worker02|
        worker02.vm.hostname = "k8s-worker-01"
        worker02.vm.box = "generic/ubuntu2204" 
        worker02.vm.provision "file", source: "./script-change-ip.sh", destination: "script-change-ip.sh"
        worker02.vm.provision "shell", inline: "chmod +x ./script-change-ip.sh && sudo ./script-change-ip.sh 10.10.0.22"
        worker02.vm.provider "hyperv" do |hv|
            hv.memory = 6144
            hv.cpus = 4
            hv.maxmemory = 8192
        end
    end


end
