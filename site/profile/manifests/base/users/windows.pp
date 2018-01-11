# == Class: profile::base::users::windows

class profile::base::users::windows (
){
   user { 'tadmin':
    ensure   => present,
  }
}
