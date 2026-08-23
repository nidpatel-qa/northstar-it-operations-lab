# INC-1001 — Finance Application Intermittently Freezing

**Incident Type:** Application / Endpoint  
**Priority:** P3 — Medium  
**Status:** Resolved  
**Environment:** Northstar IT Operations Lab  
**Lab Type:** Controlled simulation

## 1. User Report

A Finance employee reported that the Northstar Finance application would intermittently freeze during normal use.

The user also reported occasional slowness in Outlook and Teams, although those applications remained usable.

Restarting the Finance application temporarily restored functionality.

## 2. Business Impact

- One Finance user was affected.
- The user could continue working after restarting the application.
- No data loss was reported.
- No department-wide outage was identified.
- Finance application functionality was temporarily disrupted.

## 3. Initial Assessment

The initial possibilities included:

- System resource exhaustion
- Windows instability
- Application failure
- Application dependency failure
- Network-related issue
- User/application configuration issue

No root cause was assumed before investigation.

## 4. Investigation

### Step 1 — Determine Scope

The issue was isolated to one user and one endpoint.

This reduced the likelihood of a widespread infrastructure outage.

### Step 2 — Review System Resources

Controlled lab observations:

| Resource | Observation |
|---|---:|
| CPU | 18% |
| Memory | 61% |
| Disk utilization | 12% |
| Network utilization | 4% |
| Available disk space | 146 GB |

The system was not showing evidence of severe resource exhaustion.

### Step 3 — Reproduce the Application Issue

The Finance application:

- Opened normally.
- Became unresponsive after approximately 5–10 minutes.
- Returned to normal temporarily after being restarted.

Outlook, Teams, and other Windows applications continued operating normally.

This increased the likelihood of an application-specific problem.

### Step 4 — Review Windows Application Events

The Application log contained an Application Hang event:

**Event ID:** 1002  
**Application:** `NorthstarFinance.exe`

The event confirmed that Windows detected the Finance application becoming unresponsive.

This confirmed the symptom but did not yet establish the root cause.

### Step 5 — Investigate Application Dependencies

The Finance application depends on the:

**Northstar Finance Service**

During the investigation, the service was found to be stopped.

The service was configured for automatic startup but had terminated unexpectedly.

### Step 6 — Investigate the Service Failure

Service-related evidence indicated that the Finance Service could not start because a required configuration value was invalid.

The affected configuration was:

| Configuration | Current | Approved |
|---|---|---|
| DatabaseEndpoint | `finance-db-old` | `finance-db01` |

The service was attempting to use an outdated database endpoint.

### Step 7 — Verify Before Changing Configuration

The analyst did not immediately modify the configuration.

The expected database endpoint was confirmed with the application owner:

`finance-db01`

The approved configuration was then compared with the affected endpoint, confirming the configuration mismatch.

## 5. Root Cause

The Northstar Finance Service contained an outdated database endpoint.

Because the Finance application depended on this service, the service could not start correctly and the application subsequently became unresponsive.

## 6. Resolution

The following corrective actions were performed within the controlled lab scenario:

1. Confirmed the approved database endpoint.
2. Updated the service configuration to the approved endpoint.
3. Started the Northstar Finance Service.
4. Confirmed that the service remained running.
5. Relaunched the Finance application.
6. Repeated the workflow that previously caused the application to freeze.

## 7. Validation

The application remained responsive after the corrective action.

The original freezing behavior could no longer be reproduced in the controlled scenario.

The incident was therefore considered resolved.

## 8. Preventive Actions

Recommended preventive actions:

- Maintain an approved configuration record for critical application dependencies.
- Include configuration validation in application deployment/change procedures.
- Document service dependencies for business-critical applications.
- Monitor critical service startup failures.
- Require appropriate approval before production configuration changes.

## 9. Analyst Takeaway

The investigation demonstrated the importance of troubleshooting from evidence rather than immediately reinstalling an application or replacing hardware.

The investigation progressed from:

**User symptom → Scope → System resources → Application behavior → Event evidence → Service dependency → Configuration verification → Root cause → Resolution → Validation**

This approach reduces unnecessary changes and helps ensure that the actual cause of an incident is addressed.
