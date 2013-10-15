# == Class: pokemotd
#
# Add ascii art to server motd.
#
# === Parameters
#
# [*category*]
#   Category of ASCII art to apply to the server
#
# === Examples
#
#
# === Authors
#
# Kyle Sexton <ks@mocker.org>
#
# === Copyright
#
# Copyright 2013 Kyle Sexton
#
class pokemotd ($category = 'pokemon') {
  class { 'pokemotd::motd': }   ->
  class { 'pokemotd::prompt': } ->

  Class['pokemotd']

}
