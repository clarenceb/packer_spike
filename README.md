Evaluating the Packer tool
==========================

Trying out the [Packer](http://www.packer.io) tool

The following example code for the Centos 6.5 template was used as a reference and for learning:
[https://github.com/misheska/basebox-packer/blob/master/template/centos/centos65.json](https://github.com/misheska/basebox-packer/blob/master/template/centos/centos65.json)

The Centos 6.5 ISO can be downloaded from [here](http://mirrors.kernel.org/centos/6.5/isos/x86_64/CentOS-6.5-x86_64-bin-DVD1.iso)

or an alternative mirror.

	cd cache
	wget http://mirror.aarnet.edu.au/pub/centos/6.5/isos/x86_64/CentOS-6.5-x86_64-bin-DVD1.iso

	# or use `packer -var 'iso_url_base=<path_or_url_to_iso>'`


Virtualbox
----------

Details on the VirtualBox Builder can be found [here](http://www.packer.io/docs/builders/virtualbox.html).

The example uses VirtualBox version 4.3.6 and Virtual Box Additions ISO downloaded from [here](http://download.virtualbox.org/virtualbox/4.3.6/VBoxGuestAdditions_4.3.6.iso)

    cd cache
    wget http://download.virtualbox.org/virtualbox/4.3.6/VBoxGuestAdditions_4.3.6.iso

    # or use `packer -var 'guest_additions_url_base=<path_or_url_to_iso>'`

For custom VBoxManage commands, see: [Chapter 8. VBoxManage](http://www.virtualbox.org/manual/ch08.html)


Packer Variables for Configuration Templates
--------------------------------------------

See: [Configuration Templates](http://www.packer.io/docs/templates/configuration-templates.html)

	{{timestamp}}    - The current Unix timestamp in UTC
	{{isotime}}      - UTC time in RFC-3339 format

	# The following variables are scoped to a particular configuration.
	{{.Name}}        - The unique name of the VM.
	{{.Vars}}
	{{.Path}}
	{{.Provider}}
	{{.HTTPIP }}
	{{.HTTPPort}}
	{{.Version}}

TODO
----

* Install Virtual Box Guest Additions
* Run Provisioner(s)
* Run Post-Processor for Vagrant
* Build VMware ESX compatible image
* Build AWS EC2 AMI and test it out
