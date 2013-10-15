# == Class: pikamotd::prompt
#
# === Parameters
#
# === Variables
#
# === Examples
#
# === Authors
#
# Kyle Sexton <ks@mocker.org>
#
# === Copyright
#
# Copyright 2013 Kyle Sexton
#
class pokemotd::prompt ($category = $pokemotd::category) {

  file { 'pokemotd-prompt':
    ensure  => file,
    path    => '/etc/profile.d/pokemotd-prompt.sh',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("pokemotd/${category}/prompt/${::hostname}.sh.erb"),
  }

}
