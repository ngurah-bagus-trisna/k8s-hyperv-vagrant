﻿# k8s-hyperv-vagrant

Personal project to create virtual machine lab k8s on hyperv using vagrant

### Reqruitment

- Installed vagrant in Windows 11
- Enable Hyper-V

### Step

1. Clone this repository

2. Customize spesification for VM/Box

```sh
# You can change this section
    config.vm.provider "hyperv" do |hv|
        hv.cpus = "4" 
        hv.memory = "4096" # this
        hv.maxmemory = "4096" 
    end

# Or you can customize each vm and add this section
      config.vm.define "worker01" do |worker01|
        worker01.vm.provider "hyperv" do |hv| # example
            hv.memory = 6144 
            hv.cpus = 4
            hv.maxmemory = 8192
        end
      end
```

3. Run `vagrant validate` to validate Vagrantfile

4. Provisioning using `vagrant up`, after provisioning, vagrant asked to select VSwitch.
