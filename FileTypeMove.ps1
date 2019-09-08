$ext= Read-Host -Prompt 'Enter File Type extension (example: .txt, .xls)'

$sourceDir = Read-Host -Prompt 'Enter Source Directory that you want to move the files from'

$targetDir = Read-Host -Prompt 'Enter Target Directory that you want to move files to'

$pathExists = Test-Path $targetDir

If ($pathExists) {

Write-Output 'Target Directory already exists, moving files..'

}

Else {

Write-Output 'Target Directory does not exist. Creating directory and moving files...'

New-Item -ItemType "directory" -Path $targetDir

}

Move-Item -Path $sourceDir\*$ext -Destination $targetDir