# Class: profile::puppet_master
class profile::puppet_master {
  class { 'hiera':
    hiera_version => '5',
    eyaml         => true,
  }
}
