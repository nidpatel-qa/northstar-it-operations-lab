# INC-1003 — Suspicious Authentication Activity

**Incident Type:** Security / Identity  
**Priority:** P2 — High  
**Status:** Escalated  
**Environment:** Northstar IT Operations Lab  
**Lab Type:** Controlled simulation

## 1. User Report

A Finance employee contacted the service desk after receiving authentication alerts for their corporate account.

The employee reported that they were not attempting to sign in during the period in which the alerts occurred.

## 2. Initial Authentication Pattern

The controlled security log showed:

| Event | Time | Source |
|---|---:|---|
| Failed login | 09:07 | `185.XX.XX.41` |
| Failed login | 09:08 | `185.XX.XX.41` |
| Failed login | 09:09 | `185.XX.XX.41` |
| Failed login | 09:10 | `185.XX.XX.41` |
| Failed login | 09:11 | `185.XX.XX.41` |
| Successful login | 09:14 | `185.XX.XX.41` |

The repeated failures followed by a successful authentication from the same external source warranted further investigation.

## 3. User Verification

The employee confirmed that they did not attempt to authenticate between 09:07 and 09:14 and did not recognize the activity.

Historical authentication activity showed a consistent pattern of normal access from the user's expected location and corporate device.

The current authentication pattern differed from the user's normal behavior.

## 4. Security Investigation

Additional authentication and endpoint information was reviewed.

| Indicator | Finding |
|---|---|
| Multiple failed attempts | Yes |
| Successful authentication | Yes |
| Same external source | Yes |
| User recognized activity | No |
| Corporate device | Yes |
| Device compliance | Compliant |
| MFA enabled | Yes |
| Unexpected MFA approval | Yes |
| New device registered | No |
| Password changed | No |
| Privileged activity observed | No |
| Sensitive file access identified | No |

The unexpected MFA approval increased the concern that the authentication may not have been initiated by the legitimate user.

## 5. Incident Assessment

The activity was classified as a **potential account compromise**.

The evidence was sufficient to require security escalation, but there was not enough evidence to determine the exact compromise mechanism.

No evidence of privileged activity or confirmed sensitive-data access was identified during the initial review.

## 6. Response

The recommended response was:

1. Follow the organization's approved account-containment procedure.
2. Restrict the suspicious session/account as appropriate.
3. Require credential and MFA remediation according to security procedures.
4. Preserve authentication and MFA evidence.
5. Escalate the incident to the security team/SOC.
6. Continue investigation to determine the source and scope of the activity.

## 7. Evidence Preservation

Relevant evidence should be retained, including:

- Authentication timestamps
- Source information
- MFA events
- Session information
- Relevant security logs
- User verification notes

Evidence should be preserved before unnecessary changes are made.

## 8. Root Cause Assessment

The initial investigation identified **potential unauthorized authentication**, but the exact compromise mechanism remained under investigation.

Possible causes require further security analysis and should not be assumed without supporting evidence.

## 9. Preventive Actions

Recommended preventive actions:

- Review authentication and MFA events for similar patterns.
- Monitor repeated authentication failures followed by successful access.
- Maintain strong MFA controls.
- Educate users about unexpected authentication prompts.
- Review account-risk detection and alerting.
- Ensure security incidents have clear escalation procedures.

## 10. Analyst Takeaway

The investigation demonstrated the importance of distinguishing suspicious activity from confirmed compromise.

The investigation progressed through:

**Authentication alert → User verification → Log analysis → Anomaly assessment → Incident classification → Containment → Evidence preservation → Security escalation**

The incident remained classified as a potential account compromise pending further security investigation.
