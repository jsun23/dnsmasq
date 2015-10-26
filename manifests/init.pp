class dnsmasq(
	$config = $dnsmasq::params::config,
	$config_dir = $dnsmasq::params::config_dir,
	$config_template = $dnsmasq::params::config_template,
	$package_name = $dnsmasq::params::package_name,
	$package_ensure = $dnsmasq::package_ensure,
	$service_name = $dnsmasq::params::service_name,
	$service_ensure = $dnsmasq::params::service_ensure,
	$service_enable = $dnsmasq::params::service_ensure,



)inherits dnsmasq::params{

validate_absolute_path($config)
validate_absolute_path($config_dir)
validate_string($config_template)
validate_string($package_ensure)
validate_array($package_name)
validate_string($service_name)
validate_bool($service_enable)
validate_string($service_ensure)


  # Anchor this as per #8040 - this ensures that classes won't float off and
  # mess everything up.  You can read about this at:
  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'dnsmasq::begin': } ->
  class { '::dnsmasq::install': } ->
  class { '::dnsmasq::config': } ~>
  class { '::dnsmasq::service': } ->
  anchor { 'dnsmasq::end': }






}














 