#class dnsmasq::params
#This is the learning of parameters from puppetlab
#https://docs.puppetlabs.com/guides/module_guides/bgtm.html#b-parameters
#Since I have only played two different kinds of Linux operatingsystem, 
#so I just put two cases down.
class dnsmasq::params{
	case $::osfamily{
		debian: {
			$config_template   = 'ntp/ntp.conf.erb'
			$config_dir		   = '/etc/dnsmasq.d/'
			$config	   		   = '/etc/dnsmasq.conf'
			$package_ensure    = 'present'
			$package_name	   = 'dnsmasq'
			$service_enable	   = true
			$service_ensure    = 'running'
			$service_name	   = 'dnsmasq'
			
		}
		
		redhat: {
			$config_template   = 'ntp/ntp.conf.erb'
			$config_dir		   = '/etc/dnsmasq.d/'
			$config	   		   = '/etc/dnsmasq.conf'
			$package_ensure    = 'present'
			$package_name	   = 'dnsmasq'
			$service_enable	   = true
			$service_ensure    = 'running'
			$service_name	   = 'dnsmasq'
	
		}
	}
	
	



default: {
      case $::operatingsystem {
        default: {
          fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
        }
      }
    }














}