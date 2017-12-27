# == Class: profile::desktop_experience
class profile::desktop_experience (
) {

  registry_key { 'Advanced':
    ensure => present,
    path   => 'HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced',
  }
  registry_value { 'HideFileExt':
    ensure  => present,
    path    => 'HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt',
    type    => string,
    data    => '0',
    require => Registry_key['Advanced'],
  }
  registry_value { 'Hidden':
    ensure  => present,
    path    => 'HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden',
    type    => string,
    data    => '1',
    require => Registry_key['Advanced'],
  }
}
