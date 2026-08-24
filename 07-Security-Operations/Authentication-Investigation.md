# Authentication Security Investigation

## 1. Security Alert

**Alert ID:** SEC-1001  
**Severity:** Medium  
**Status:** Under Investigation  
**Environment:** Northstar Corporate Lab

### Alert Summary

The security monitoring team identified multiple failed authentication attempts against a fictional employee account, followed by a successful login.

The activity was flagged for investigation because the pattern could indicate:

- Password guessing
- Credential stuffing
- A legitimate user entering an incorrect password repeatedly
- An account compromise

### Simulated Alert Data

| Time | User | Source IP | Result | MFA |
|---|---|---|---|---|
| 09:14 | TestUser | 10.20.15.44 | Failed | N/A |
| 09:15 | TestUser | 10.20.15.44 | Failed | N/A |
| 09:16 | TestUser | 10.20.15.44 | Failed | N/A |
| 09:17 | TestUser | 10.20.15.44 | Success | Passed |

> **Note:** All usernames, IP addresses, timestamps, and authentication results in this investigation are fictional and created for portfolio simulation.

## 2. Initial Triage

The repeated failed authentication attempts followed by a successful login require further investigation.

### Initial Assessment

**Potential Risk:** Unauthorized account access

**Initial Priority:** Medium

### Immediate Questions

1. Does the user recognize the successful login?
2. Is the source IP address expected?
3. Was MFA successfully completed?
4. Were there additional authentication attempts?
5. Did any suspicious activity occur after the successful login?

The investigation will continue by validating the authentication activity and determining whether the event represents a legitimate user action or a potential account compromise.
