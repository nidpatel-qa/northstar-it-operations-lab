# PowerShell Support Toolkit

## Overview

The PowerShell Support Toolkit is a controlled IT operations lab demonstrating how PowerShell can support endpoint health assessment and network troubleshooting.

The toolkit focuses on common service desk scenarios involving system performance, storage, memory, CPU utilization, network connectivity, and DNS resolution.

All endpoint values and diagnostic results in this project are fictional and used for controlled lab simulation.

## Tools

### System-Health.ps1

Demonstrates a basic endpoint health assessment covering:

- Computer name
- Current user
- Windows version
- OS build
- System uptime
- Disk space
- Memory usage
- CPU usage

The script applies basic thresholds to classify endpoint conditions as normal or requiring further investigation.

### Network-Diagnostics.ps1

Demonstrates a structured network troubleshooting workflow covering:

- IP address
- Default gateway
- DNS server
- Gateway connectivity
- Internet connectivity
- DNS resolution
- Diagnostic decision logic
- Recommended troubleshooting actions

The script uses conditional logic to help distinguish between local connectivity, Internet connectivity, DNS, and application-level issues.

## Example Diagnostic Workflow

```text
User reports connectivity problem
            |
            v
Check gateway connectivity
            |
            v
Check Internet connectivity
            |
            v
Check DNS resolution
            |
            v
Interpret results
            |
            v
Recommend next troubleshooting step
