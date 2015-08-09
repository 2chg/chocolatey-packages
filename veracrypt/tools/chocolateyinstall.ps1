$ErrorActionPreference = 'Stop';

$packageName = 'veracrypt'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1468023&FileTime=130833398368700000&Build=21029'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs    = '/S'

  # optional
  # registryUninstallerKey = 'veracrypt' #ensure this is the value in the registry
  checksum      = '6ffc36d1a0571ba79f21e9fd1a5b68bbee0141b2'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs
