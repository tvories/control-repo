# == Class: profile::base

class profile::base {
  include profile::chocolatey
  include profile::base::desktop_experience

  package { '7zip':
    ensure      =>  'latest',
  }
}
