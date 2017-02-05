choco install jre8 -y -f

$ErrorActionPreference = 'Stop';

$packageName= 'MirthConnect'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.mirthcorp.com/connect/3.4.2.8129.b167/mirthconnect-3.4.2.8129.b167-windows.exe'
$url64      = 'http://downloads.mirthcorp.com/connect/3.4.2.8129.b167/mirthconnect-3.4.2.8129.b167-windows-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'MirthConnect*'

  checksum      = '3F363B575B04A354998D8247E602DEA3E73CD191'
  checksumType  = 'sha1'
  checksum64    = '3F363B575B04A354998D8247E602DEA3E73CD191'
  checksumType64= 'sha1'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '-q'
}

Install-ChocolateyPackage @packageArgs
