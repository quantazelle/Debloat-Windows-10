# Tested working in Windows 10, Windows Server 2008 R2 and Windows 7
# 
# Description
# Sets File Explorer Options  
# Check "Show hidden files, folders, and drives"
# Uncheck "Hide extensions for known file types"
# Uncheck "Hide protected operating system files (Recommended)"
# 
# 1. ls to directory containing the script
# 2. ./file-explorer-settings.ps1  
#
# From Tatiana Racheva https://stackoverflow.com/users/132042/tatiana-racheva

Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy UnRestricted
$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key Hidden 1
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key ShowSuperHidden 1
Stop-Process -processname explorer
