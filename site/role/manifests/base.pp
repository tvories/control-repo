class role::base {
  include profile::base
  case $facts['os']['family'] {
    'linux': {
      include profile::linux::base
    }
    'windows': {
      include profile::windows::base
    }
    default: {
      include profile::base
    }
  }
