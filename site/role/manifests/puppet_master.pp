# == Class: role::puppet_master
class role::puppet_master {

  #This role would be made of all the profiles that need to be included to make a webserver work
  #All roles should include the base profile
  include profile::puppet_master

}
