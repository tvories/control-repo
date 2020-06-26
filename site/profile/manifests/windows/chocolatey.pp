# == Class: profile::windows::chocolatey

class profile::windows::chocolatey {
  include chocolatey

  package { 'chocolatey':
    ensure      =>  'latest',
  }
}
