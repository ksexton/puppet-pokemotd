# == Class: pokemotd::motd
#
# Full description of class pokemotd::motd here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { pokemotd::motd:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Kyle Sexton <ks@mocker.org>
#
# === Copyright
#
# Copyright 2013 Kyle Sexton
#
class pokemotd::motd ($category = $pokemotd::category) {

  concat { '/etc/motd':
    owner => root,
    group => root,
    mode  => '0644',
  }

  concat::fragment { 'motd-artwork':
    target  => '/etc/motd',
    content => template("pokemotd/${category}/motd/${::hostname}.txt.erb"),
    order   => 01,
  }

  concat::fragment { 'motd-hostinfo':
    target  => '/etc/motd',
    content => template('pokemotd/default/motd/base.txt.erb'),
    order   => 02,
  }

}
