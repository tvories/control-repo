class profile::chocolatey {
  include chocolatey

  package {'git':
    ensure => 'present',
  }
}
