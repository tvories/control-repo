class profile::chocolatey {
  include chocolatey

  package { 'chocolatey':
    ensure      =>  'latest',
  }

  package {'git':
    ensure => 'present',
  }
}
