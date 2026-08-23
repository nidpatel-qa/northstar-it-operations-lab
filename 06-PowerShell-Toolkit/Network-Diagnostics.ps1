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





# Diagnostic interpretation

Write-Host ""
Write-Host "========================================"
Write-Host " Diagnostic Assessment"
Write-Host "========================================"

if ($GatewayReachable -and $InternetReachable -and $DNSResolution) {
    Write-Host "Overall Status : Network and DNS appear healthy."
    Write-Host "Next Step      : Investigate application or endpoint-specific issues."
}
elseif ($GatewayReachable -and $InternetReachable -and -not $DNSResolution) {
    Write-Host "Overall Status : Possible DNS resolution issue."
    Write-Host "Next Step      : Investigate DNS configuration or DNS server availability."
}
elseif (-not $GatewayReachable) {
    Write-Host "Overall Status : Local network connectivity issue suspected."
    Write-Host "Next Step      : Investigate adapter, Wi-Fi/Ethernet, DHCP, or network access."
}
else {
    Write-Host "Overall Status : Further network investigation required."
    Write-Host "Next Step      : Review connectivity and network configuration."
}
