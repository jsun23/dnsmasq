#dnsmasq configulation
#class dnsmasq::config



define dnsmasq::config(
	$ensure = 'present',
	$prio = 



) 

file { "${dnsmasq::params::config_dir}${prio}-${name}":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    content => $content,
    source  => $source,
    notify  => Class['dnsmasq::service'],
  }
}