# == Class: profile::base::desktop_experience
class profile::base::desktop_experience (
) {
  class { 'showhidden':
    show_file_ext_version       => '1,0,1',
    show_hidden_folders_version => '1,0,1',
    show_file_ext               => false,
    show_hidden_folders         => false,
  }
}
