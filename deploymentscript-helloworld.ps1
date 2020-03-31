Install-Module PowerShellGet –Repository PSGallery –Force
Install-Module Az.Storage -RequiredVersion 1.13.3-preview -Repository PSGallery -AllowClobber -AllowPrerelease -Force

$ctx = New-AzStorageContext -StorageAccountName 'stmdwdevscus001' -UseConnectedAccount


$filesystemName = "raw"
New-AzDatalakeGen2FileSystem -Context $ctx -Name $filesystemName
