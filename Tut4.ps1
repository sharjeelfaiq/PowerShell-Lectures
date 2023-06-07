#Automatic Variables

#@PSVersionTable
$PSVersionTable
if ($PSVersionTable.PSVersion.Major -le 5) {
    Write-Host $PSVersionTable.PSVersion.Major
}
else {
    Write-Host $PSVersionTable.PSEdition
}

#Get-Variable -Automatic

#$PWD
$files = Get-ChildItem -Path $PWD -Recurse -File
foreach ($file in $files) {
    Write-Host $file
}

#$Error
try {
    $files = Get-ChildItem -Path $PWD -Recurse -File
    foreach ($file in $files) {
        Write-ost $file
    }
}
catch {
    Write-Host "There's an error in while executing the file variable in try-catch block"
    Write-Host $Error[0].Exception.Message
}

#$Args
$Name = Read-Host

param ([string]$Name)

Write-Host "Hello, $Name!"
Write-Host "Addtional arguments:"
foreach ($arg in $Args) {
    Write-Host $arg
}

#$HOME
$documentsPath = Join-Path $HOME "Document"
$documentsPath
