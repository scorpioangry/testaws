<powershell>
set
# Check current setting
Get-ExecutionPolicy

# Disable policy
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
# Choose [Y]es

Get-WmiObject -Class Win32_Product | Select-Object -Property Name | `
    Where {$_.Name -notlike "Microsoft*" -AND $_.Name -notlike "Windows*" -AND $_.Name -notlike "crystal*" -AND $_.Name -notlike "shared*" -AND $_.Name -notlike "tp.*"}  | sort-object -property Name > c:\1.txt 



# Can be run immediately
Set-ExecutionPolicy -ExecutionPolicy Default
# [Y]es

</powershell>
