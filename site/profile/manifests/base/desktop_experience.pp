# == Class: profile::desktop_experience
class profile::base::desktop_experience (
) {
  class { 'firewallprofile_win':
    show_file_ext_version         => '1,0,0',
    show_hidden_folders_version   => '1,0,0',
  }
}
