[CmdletBinding()]
Param(
    [Parameter()]
    [ValidateSet('puppet', 'ruby')]
    [string]$test = ''
)

$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

Import-Module -Name 'C:\Program Files\WindowsPowerShell\Modules\PuppetDevelopmentKit'
pdk validate $test