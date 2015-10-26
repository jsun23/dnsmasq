# Class: dnsmasq: install
# ideal from online source
# https://docs.puppetlabs.com/guides/module_guides/bgtm.html#moduleinstall
class dnsmasq::install inherits dnsmasq{
	
	package {$dnsmasq::package_name:
		ensure => $dnsmasq::package_ensure,
	}
	


}