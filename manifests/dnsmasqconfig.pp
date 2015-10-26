#dnsmasq configulation
#define dnsmasq::dnsmasqconfig



define dnsmasq::dnsmasqconfig(
	$ensure = $package_ensure,
	$prio = 10,
	$source = undef,
	$content = undef
	$domain = $domain
	
	){
	
	
	include dnsmasq





file { "${dnsmasq::params::config_dir}${prio}-${name}":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    content => $content,
    source  => $source,
    notify  => Class['dnsmasq::service'],
  }
}