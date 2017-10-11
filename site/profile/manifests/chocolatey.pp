class profile::chocolatey {
  include chocolatey

  package { 'chocolatey':
    ensure      =>  latest
  }
}
