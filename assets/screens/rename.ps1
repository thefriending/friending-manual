Write-Host "Renaming screenshots in folder: " $PSScriptRoot
Get-ChildItem $PSScriptRoot | 
  Where {-Not $_.PSIsContainer} | 
  Rename-Item -NewName { $_.Name.ToLower().Replace(' ', '-') }