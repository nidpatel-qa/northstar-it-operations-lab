# Incident Management Process

## Purpose

This document defines how IT Support incidents are recorded, prioritized, investigated, resolved, and closed within the Northstar Technologies lab environment.

The goal is to restore normal service as quickly as possible while keeping users informed and documenting enough technical information to support future troubleshooting.

## Incident Lifecycle

Each incident follows a consistent workflow:

**Reported → Logged → Triaged → Investigated → Resolved → Validated → Closed**

### 1. Reported

The user reports an issue through the service desk.

The analyst records:

* User or department
* Affected device or application
* Description of the problem
* Time reported
* Business impact
* Any error messages or symptoms

### 2. Logged

The incident receives a unique ticket number.

Example:

`INC-1001`

The analyst records the initial information without assuming the root cause.

### 3. Triaged

The analyst determines:

* Impact
* Urgency
* Priority
* Initial troubleshooting path
* Whether escalation may be required

### 4. Investigated

The analyst gathers evidence and works through the problem systematically.

Typical evidence may include:

* User-reported symptoms
* Device information
* Error messages
* Connectivity results
* Application behavior
* System logs
* Configuration information
* Previous related incidents

### 5. Resolved

The analyst applies an appropriate fix or workaround within their authorization.

If the issue requires additional access or expertise, it is escalated to the appropriate support level.

### 6. Validated

The analyst confirms that the original issue has been resolved.

Validation should focus on the user's original problem rather than simply confirming that a technical change was made.

### 7. Closed

The incident is closed after:

* Resolution is documented
* User impact is addressed
* Validation is completed
* Any required follow-up action is recorded

---

## Priority Model

Priority is determined using both **business impact** and **urgency**.

| Priority      | Description                                                               | Example                             |
| ------------- | ------------------------------------------------------------------------- | ----------------------------------- |
| P1 - Critical | Major business service unavailable or widespread outage                   | Corporate network unavailable       |
| P2 - High     | Significant impact affecting multiple users or critical business activity | Finance application unavailable     |
| P3 - Medium   | Individual user or limited service impact                                 | User cannot access shared drive     |
| P4 - Low      | Minor issue or service request with limited impact                        | Non-critical software configuration |

Priority may be adjusted as additional information becomes available.

---

## Escalation Guidelines

An incident should be escalated when:

* The required administrative access is unavailable.
* The issue affects infrastructure outside the analyst's scope.
* Multiple users are affected and a wider outage is suspected.
* A security incident is suspected.
* Vendor or application-owner intervention is required.
* Troubleshooting has reached the analyst's technical or authorization boundary.

The analyst should document the troubleshooting already completed before escalation to avoid duplicated effort.

---

## Troubleshooting Approach

The analyst should avoid immediately assuming the cause of an incident.

A structured approach is used:

1. Understand the reported symptoms.
2. Determine scope and business impact.
3. Reproduce or verify the issue where possible.
4. Gather evidence.
5. Identify likely causes.
6. Test the most appropriate hypothesis.
7. Apply the least disruptive resolution.
8. Validate the result.
9. Document the outcome.
10. Identify recurring or preventive actions when appropriate.

---

## Documentation Standard

Each completed incident should provide enough information for another IT Support analyst to understand:

* What happened
* Who was affected
* What was investigated
* What evidence was found
* What caused the issue
* What action resolved it
* How the resolution was verified
* Whether follow-up action is required

The objective is not to document every action taken, but to capture the information necessary for effective support and future troubleshooting.

