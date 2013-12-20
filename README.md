Evaluating the Packer tool
==========================

Trying out the [Packer](http://www.packer.io) tool

I used some of the example code for the Centos 6.5 template here:
https://github.com/misheska/basebox-packer/blob/master/template/centos/centos65.json

The Centos 6.5 ISO can be downloaded from:

http://mirrors.kernel.org/centos/6.5/isos/x86_64/CentOS-6.5-x86_64-bin-DVD1.iso

or an alternative mirror.

	cd cache
	wget http://mirror.aarnet.edu.au/pub/centos/6.5/isos/x86_64/CentOS-6.5-x86_64-bin-DVD1.iso


Virtualbox
----------

Used VirtualBox version 4.3.6 and Virtual Box Additions ISO downloaded from:

http://download.virtualbox.org/virtualbox/4.3.6/VBoxGuestAdditions_4.3.6.iso

    cd cache
    wget http://download.virtualbox.org/virtualbox/4.3.6/VBoxGuestAdditions_4.3.6.iso


Packer Variables
-----------------

{{.Name}}

{{.Vars}}

{{.Path}}

{{.Provider}}

{{ .HTTPIP }}

{{ .HTTPPort}}

{{.Version}}

TODO
----

* Install Virtual Box Guest Additions
* Run Provisioner(s)
* Run Post-Processor for Vagrant
* Build VMware ESX compatible image
* Build AWS EC2 AMI and test it out
