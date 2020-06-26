# == Class: profile::linux::base

class profile::linux::base {

  package { 'unzip':
    ensure      =>  'latest',
  }
}
