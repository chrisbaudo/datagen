Install-Module PowerShellGet –Repository PSGallery –Force
Install-Module Az.Storage -RequiredVersion 1.13.3-preview -Repository PSGallery -AllowClobber -AllowPrerelease -Force

$ctx = New-AzStorageContext -StorageAccountName $storageaccountname -UseConnectedAccount

$filesystemName = "raw"
New-AzDatalakeGen2FileSystem -Context $ctx -Name $filesystemName

$filesystemName = "sandbox"
New-AzDatalakeGen2FileSystem -Context $ctx -Name $filesystemName

$filesystemName = "curated"
New-AzDatalakeGen2FileSystem -Context $ctx -Name $filesystemName

$filesystemName = "staging"
New-AzDatalakeGen2FileSystem -Context $ctx -Name $filesystemName
