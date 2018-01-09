class profile::base::base {
  include profile::chocolatey
  include profile::base::desktop_experience

  package { '7zip':
    ensure      =>  'latest',
  }

  # Local users
  
}
