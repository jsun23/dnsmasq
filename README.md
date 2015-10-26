# dnsmasq

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with [modulename]](#setup)
    * [What [modulename] affects](#what-[modulename]-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with [modulename]](#beginning-with-[modulename])
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

The dnsmasq module installs, manage, and configure DNS services.


## Setup


### Beginning with dnsmasq	

 include '::dnsmasq' is enough for running this module. 

## Usage

```
	dnsmasq::dnsmasqconfig {'local_dns':
		$source => 'puppet:///files/dnsmasq/local-dns',
	
	}
	
	or
```puppet
	
	class {'dnsmasq':
		servers => ['bob.com','alice.com'],
	
	}
```
## Reference
#public class

dnsmasq: Main class, include all parameters and classes.


#private class
dnsmasq::dnsmasqconfig: define the configuration.
dnsmasq::install: handle the packages.
dnsmasq::config: handle the configuration file.
dnsmasq::service: handle the serivce.

#parameters

config: the configuration file.
config_dir: the direction of the configuration file.
config_template: the direction of the configuration template.
servers: the address of the serivce.
domain: set the domain default '1.2.3.4'.
package_name: passing the package name into the class.
package_ensure: ensure the package is exist.
service_name: passing the serivce name into the class.
service_ensure: ensure the service is runing, set true for runing, set false for not running.
service_enable: make sure the service is exist. should always set as true, otherwise the package will not get any result.



## Limitations

since I just familiar with two types of Linux system, so the OS is limited with these two, Redhead and ubuntu.

## Development

Since your module is awesome, other users will want to play with it. Let them know what the ground rules for contributing are.

# Other information:

This is my first time using puppet, just follow the instruction from the online tutorial to do the exericse. Basically using the puppetlab documentation and github examples to figure out how to use puppet module and how to create and install the puppet module. This is new knowledge for me. I am feeling very happy to do this exericse and learn some new stuff that I won't be able to touch during my college study. 
Thank you! Onyx Point.	