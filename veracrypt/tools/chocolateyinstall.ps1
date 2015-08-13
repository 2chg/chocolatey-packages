$ErrorActionPreference = 'Stop';

$packageName = 'veracrypt'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/veracrypt/files/VeraCrypt%201.13/VeraCrypt%20Setup%201.13.exe/download'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/S'

  checksum      = '95e7af6144f2c8212bd87a0707a41722c97760c6'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs
