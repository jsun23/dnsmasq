# Class :: dnsmasq::service
# Basic idea comes from online source
# https://docs.puppetlabs.com/guides/module_guides/bgtm.html#moduleservice
class dnsmasq::service inherits dnsmasq{
	
	if !($dnsmasq::service_ensure in['running','stopped']){
		fail('service_ensure should be running or stopped')
	}
	
	service {'dnsmasq':
		ensure => $dnsmasq::service_ensure,
		enable => $dnsmasq::service_enable,
		name   => $dnsmasq::service_name,
		hasstatus => true,
		hasrestart=> true,
	}




}