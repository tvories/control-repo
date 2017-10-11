class profile::base {
  include profile::chocolatey

  package { '7zip':
    ensure      =>  'latest',
  }
}
