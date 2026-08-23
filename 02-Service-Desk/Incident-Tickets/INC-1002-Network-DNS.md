# INC-1002 — Remote Access to Internal Finance Application

**Incident Type:** Network / DNS  
**Priority:** P2 — High  
**Status:** Resolved  
**Environment:** Northstar IT Operations Lab  
**Lab Type:** Controlled simulation

## 1. User Report

A remote employee reported that the internet was working normally but the Northstar Finance application could not be accessed.

The issue affected one remote employee.

## 2. Business Impact

- One remote employee was unable to access the Finance application.
- General internet access remained available.
- Other users were able to access the application.
- No organization-wide application outage was identified.

## 3. Initial Assessment

Possible causes included:

- Application outage
- Local network connectivity
- VPN connectivity
- DNS resolution
- Internal routing
- Incorrect application configuration

The investigation began by determining whether the application itself was available.

## 4. Investigation

### Step 1 — Application Availability

The application monitoring check showed:

- Finance application: Operational
- Application server: Operational
- Database: Operational
- Other users: Successfully accessing the application

This indicated that the issue was isolated to the affected user's connectivity path.

### Step 2 — Basic Connectivity

Controlled lab results showed:

| Check | Result |
|---|---|
| Internet access | Working |
| Local network connection | Working |
| Default gateway | Reachable |
| Public DNS resolution | Working |
| Internal application hostname | Failed |

The results indicated that general connectivity was functioning.

### Step 3 — VPN and Internal DNS

The controlled investigation confirmed:

- Corporate VPN: Connected
- Corporate DNS server: Reachable
- Internal hostname resolution: Failed

The investigation therefore focused on the internal DNS record rather than changing the user's public DNS settings.

### Step 4 — DNS Record Review

The internal DNS record was reviewed for:

`finance.northstar.local`

The record contained the following values:

| Configuration | Value |
|---|---|
| DNS record | `finance.northstar.local` |
| Current IP | `10.20.30.75` |
| Approved application IP | `10.20.30.50` |

The record was pointing to an outdated IP address.

### Step 5 — Configuration Verification

The analyst did not immediately modify the DNS record.

The approved Finance application IP was verified with the appropriate application/infrastructure owner.

The approved destination was confirmed as:

`10.20.30.50`

## 5. Root Cause

The internal DNS record for the Finance application contained an outdated IP address.

As a result, the affected remote employee's system was directed to the incorrect destination when resolving the internal application hostname.

## 6. Resolution

Following the appropriate change process, the DNS record was corrected:

`finance.northstar.local → 10.20.30.50`

The internal application hostname was then tested again.

## 7. Validation

Post-change validation confirmed:

- Internal DNS resolution: Successful
- Internal application connectivity: Successful
- Finance application access: Restored
- User access: Restored

The original issue could no longer be reproduced in the controlled scenario.

## 8. Preventive Actions

Recommended preventive actions:

- Maintain accurate internal DNS records.
- Document application and server dependencies.
- Review DNS changes through the appropriate change-management process.
- Monitor critical internal DNS records.
- Include DNS validation when application infrastructure changes occur.

## 9. Analyst Takeaway

The investigation demonstrated that working internet access does not necessarily mean that internal corporate resources are reachable.

The troubleshooting process progressed through:

**Application availability → Local connectivity → VPN → Internal DNS → DNS record verification → Corrective change → Validation**

The issue was resolved without unnecessarily reinstalling software, changing the user's public DNS configuration, or replacing hardware.
