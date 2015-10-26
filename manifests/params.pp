#class dnsmasq::params


class dnsmasq::params{
	case $::osfamily{
		debian: {
			$config_template   = 'ntp/ntp.conf.erb'
			$config_dir		   = '/etc/dnsmasq.d/'
			$package_ensure    = 'present'
			$service_ensure    = 'running'
			$service_name	   = 'dnsmasq'
			
		}
	}


















}