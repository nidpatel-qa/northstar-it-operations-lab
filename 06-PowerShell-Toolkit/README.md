# PowerShell Support Toolkit

## Overview

The PowerShell Support Toolkit is a small IT support automation lab created to demonstrate how PowerShell can be used to collect endpoint information and assist with basic troubleshooting.

The toolkit is designed around common IT service desk scenarios such as system performance, storage, memory, and CPU-related issues.

## System Health Script

### `System-Health.ps1`

The System Health script demonstrates a basic endpoint health assessment.

It reviews:

- Computer name
- Current user
- Windows version
- OS build
- System uptime
- Disk space
- Memory usage
- CPU usage

The script also applies simple thresholds to identify whether CPU, memory, and disk conditions appear normal or may require further investigation.

## Example Lab Environment

This project uses fictional endpoint information.

Example:

```text
Computer Name : Northstar-PC
Current User  : TestUser
Operating System : Windows 11 Pro
OS Build : 26100
System Uptime : 3 days, 7 hours
