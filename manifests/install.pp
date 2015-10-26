# Class: dnsmasq: install

class dnsmasq::install inherits dnsmasq{
	
	package {$dnsmasq::package_name:
		ensure => $dnsmasq::package_ensure,
	}
	


}