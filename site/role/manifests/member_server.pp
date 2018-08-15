class role::member_server {
  include profile::base
  case $os.family {
    'linux' {
      include profile::linux::base
    }
    'windows' {
      include profile::windows::base
    }
  }



  if(os.family = 'linux') {
    include profile::linux::base
  } else if (os.family = 'windows') {
    include profile::windows::base
  }
}
