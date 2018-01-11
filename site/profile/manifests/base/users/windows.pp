class profile::base::users::windows (
){
   user { 'tadmin':
    ensure   => present,
  }
}
