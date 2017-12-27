class profile::base {
  include profile::chocolatey
  include profile::desktop_experience

  package { '7zip':
    ensure      =>  'latest',
  }
}
