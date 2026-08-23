# Northstar IT Operations Lab
# Network Diagnostics Script
# Purpose: Demonstrate a basic network troubleshooting workflow
# Lab Mode: Controlled simulation

Write-Host "========================================"
Write-Host " Northstar Network Diagnostics"
Write-Host "========================================"

# Simulated network information
$IPAddress = "192.168.10.25"
$Gateway = "192.168.10.1"
$DNSServer = "192.168.10.10"

Write-Host ""
Write-Host "IP Address      : $IPAddress"
Write-Host "Default Gateway : $Gateway"
Write-Host "DNS Server      : $DNSServer"

Write-Host ""
Write-Host "Environment: Controlled Lab Simulation"




# Simulated connectivity results
$GatewayReachable = $true
$InternetReachable = $true

Write-Host ""
Write-Host "Connectivity Tests"
Write-Host "-------------------"

if ($GatewayReachable) {
    Write-Host "Default Gateway : Reachable"
} else {
    Write-Host "Default Gateway : Unreachable"
}

if ($InternetReachable) {
    Write-Host "Internet        : Reachable"
} else {
    Write-Host "Internet        : Unreachable"
}





# Simulated DNS resolution result
$DNSResolution = $true
$TestDomain = "intranet.northstar.local"

Write-Host ""
Write-Host "DNS Resolution"
Write-Host "--------------"

if ($DNSResolution) {
    Write-Host "DNS Query      : Successful"
    Write-Host "Test Domain    : $TestDomain"
} else {
    Write-Host "DNS Query      : Failed"
    Write-Host "Test Domain    : $TestDomain"
}
