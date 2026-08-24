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






## 3. Evidence Analysis

The authentication events were reviewed to determine whether the activity was consistent with normal user behavior or potential unauthorized access.

### Source IP Analysis

The successful and failed authentication attempts originated from the same fictional internal IP address:

**Source IP:** `10.20.15.44`

The IP address is within the fictional Northstar corporate network range.

### Authentication Pattern

The sequence shows:

- Three consecutive failed authentication attempts
- A successful authentication immediately afterward
- MFA successfully completed on the successful login

### Initial Interpretation

The authentication pattern is suspicious enough to investigate, but the available evidence does **not** confirm account compromise.

The successful MFA challenge reduces the likelihood of an unauthorized login but does not completely eliminate the possibility of compromised credentials or an approved authentication attempt.

### Evidence Classification

| Evidence | Assessment |
|---|---|
| Multiple failed logins | Requires investigation |
| Successful login | Confirmed |
| MFA completed | Positive security control |
| Internal source IP | Lower immediate risk |
| Confirmed malicious activity | Not established |

### Investigation Conclusion

At this stage, the event should remain classified as **suspicious authentication activity** rather than a confirmed security incident.

Additional validation with the account owner and review of post-authentication activity are required before determining whether escalation or containment is necessary.





## 4. User Validation

The fictional account owner was contacted to determine whether the authentication activity was recognized.

### Simulated User Confirmation

The account owner confirmed:

- The login attempt occurred during their normal working hours.
- They were working from the Northstar corporate network.
- They recognized the three failed attempts as incorrect password entries.
- They completed the MFA challenge themselves.
- They did not observe unexpected account activity afterward.

### Validation Result

The authentication activity is consistent with legitimate user behavior.

The failed attempts appear to have resulted from incorrect password entries rather than an apparent credential attack.

## 5. Risk Assessment

Based on the available evidence:

**Likelihood of compromise:** Low

**Business impact:** Low

**Overall Risk:** Low

### Reasoning

The following factors reduce the risk assessment:

- Authentication originated from the expected internal network.
- The account owner confirmed the activity.
- MFA was successfully completed.
- No additional suspicious activity was identified.
- No evidence of unauthorized account access was established.

### Recommended Action

No immediate account containment is required.

The event should be documented and closed as **Benign / User-Confirmed Authentication Activity**.

If similar authentication patterns occur repeatedly or originate from unexpected locations, the activity should be re-investigated and potentially escalated.





## 6. Response and Closure

### Response Decision

No account lockout, password reset, or emergency containment was performed because the activity was validated by the account owner and no evidence of compromise was identified.

### Actions Taken

- Documented the authentication events.
- Confirmed the activity with the account owner.
- Reviewed the authentication pattern.
- Assessed the risk as Low.
- Classified the activity as user-confirmed.
- Documented the recommended monitoring approach.

### Escalation Criteria

The event should be escalated if future activity includes:

- Authentication from an unexpected geographic location.
- Repeated authentication failures from unknown sources.
- MFA requests that the user did not initiate.
- Successful authentication that the user cannot recognize.
- Evidence of unauthorized account or application activity.

### Incident Status

**Status:** Closed

**Classification:** Benign / User-Confirmed Activity

**Risk Level:** Low

**Closure Reason:** Authentication activity was confirmed by the account owner and no evidence of unauthorized access was identified.
