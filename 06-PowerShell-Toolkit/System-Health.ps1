# Northstar IT Operations Lab
# System Health Collection Script
# Purpose: Demonstrate endpoint health information collection
# Lab Mode: Controlled simulation

Write-Host "========================================"
Write-Host " Northstar Endpoint Health Check"
Write-Host "========================================"

# Simulated endpoint information
$ComputerName = "Northstar-PC"
$CurrentUser = "TestUser"

Write-Host ""
Write-Host "Computer Name : $ComputerName"
Write-Host "Current User  : $CurrentUser"

Write-Host ""
Write-Host "Environment: Controlled Lab Simulation"



# Simulated operating system information
$WindowsVersion = "Windows 11 Pro"
$OSBuild = "26100"
$Uptime = "3 days, 7 hours"

Write-Host ""
Write-Host "Operating System : $WindowsVersion"
Write-Host "OS Build         : $OSBuild"
Write-Host "System Uptime    : $Uptime"



# Simulated disk space information
$Drive = "C:"
$TotalSpaceGB = 475
$FreeSpaceGB = 186

Write-Host ""
Write-Host "Drive            : $Drive"
Write-Host "Total Space      : $TotalSpaceGB GB"
Write-Host "Free Space       : $FreeSpaceGB GB"
