# == Class: profile::desktop_experience
class profile::desktop_experience (
) {

# Set file extensions to show
  registry_key { 'ShowFileExt':
    ensure => present,
    path   => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowFileExt',
  }
  registry_value { 'VersionShowFileExt':
    ensure  => present,
    path    => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowFileExt\Version',
    type    => string,
    data    => '1,0,0',
    require => Registry_key['ShowFileExt'],
  }
  registry_value { 'StubPathShowFileExt':
    ensure  => present,
    path    => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowFileExt\StubPath',
    type    => string,
    data    => 'reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f',
    require => Registry_key['ShowFileExt'],
  }

# Set hidden folders and files to show
  registry_key { 'ShowHiddenFolders':
    ensure => present,
    path   => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowHiddenFolders',
  }
  registry_value { 'VersionShowHiddenFolders':
    ensure  => present,
    path    => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowHiddenFolders\Version',
    type    => string,
    data    => '1,0,0',
    require => Registry_key['ShowHiddenFolders'],
  }
  registry_value { 'StubPathShowHiddenFolders':
    ensure  => present,
    path    => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\ShowHiddenFolders\StubPath',
    type    => string,
    data    => 'reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f',
    require => Registry_key['ShowHiddenFolders'],
  }
}
