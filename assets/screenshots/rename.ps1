
Get-ChildItem $PSScriptRoot | 
  Where {-Not $_.PSIsContainer} | 
  Rename-Item -NewName {$_.FullName.ToLower().Replace(' ', '-')}