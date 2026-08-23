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



# Simulated memory information
$TotalMemoryGB = 16
$UsedMemoryGB = 9.4
$FreeMemoryGB = 6.6

Write-Host ""
Write-Host "Total Memory     : $TotalMemoryGB GB"
Write-Host "Used Memory      : $UsedMemoryGB GB"
Write-Host "Free Memory      : $FreeMemoryGB GB"




# Simulated CPU information
$CPU = "Intel Core i5"
$CPUUsage = 38

Write-Host ""
Write-Host "Processor        : $CPU"
Write-Host "CPU Usage        : $CPUUsage%"






# Simulated health assessment

Write-Host ""
Write-Host "========================================"
Write-Host " Health Assessment"
Write-Host "========================================"

if ($CPUUsage -lt 80) {
    Write-Host "CPU Status      : Normal"
} else {
    Write-Host "CPU Status      : Review Required"
}

if ($FreeMemoryGB -gt 4) {
    Write-Host "Memory Status   : Normal"
} else {
    Write-Host "Memory Status   : Review Required"
}

if ($FreeSpaceGB -gt 50) {
    Write-Host "Disk Status     : Healthy"
} else {
    Write-Host "Disk Status     : Low Disk Space"
}
