# == Class: profile::windows::base

class profile::windows::base {
  include profile::windows::chocolatey
  include profile::windows::desktop_experience

  package { '7zip':
    ensure      =>  'latest',
  }
}
