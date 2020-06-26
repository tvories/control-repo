# == Class: profile::base::desktop_experience
class profile::base::desktop_experience (
) {
  class { 'showhidden_win':
    show_file_ext_version       => '1,0,2',
    show_hidden_folders_version => '1,0,2',
    show_file_ext               => true,
    show_hidden_folders         => true,
  }
}
