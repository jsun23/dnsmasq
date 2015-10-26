# Class dnsmasq::config
# basic config information and how to set up the config is from puppet lab
# https://docs.puppetlabs.com/guides/module_guides/bgtm.html#moduleconfig

class dnsmasq::config inherits dnsmasq {

	file{$dnsmasq::config:
		ensure => file,
		owner  => '0',
		group  => '0',
		mode   => '0644'
		content => template ($config_template),
	
	
	}->
	file{$dnsmasq::config_dir:
		ensure => directory,
		owner  => '0',
		group  => '0',
		mode   => '0755',
		recurse => true,
	
	}


}