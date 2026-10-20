## 1. Purpose of this section
<!-- 2–3 sentences: why stakeholders and actors are separated, and how this feeds requirements (file 04) and use cases. -->

## 2. Stakeholder identification approach
<!-- Briefly: sources used (scenario sections, stakeholder quotes), and how you classified direct / indirect / external. -->

## 3. Stakeholder catalogue

| ID    | Stakeholder                    | Type     | Goals                                                                                              | Concerns                                                                                       | Influence | Interest | Evidence                                                                                              | Related problems |
| ----- | ------------------------------ | -------- | -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | --------- | -------- | ----------------------------------------------------------------------------------------------------- | ---------------- |
| SH-01 | Coordinator                    | Direct   | Coordinate suitable, reliable transport by managing journey requests, drivers and vehicles.        | Inconsistent records of offers and confirmations; overlapping driver commitments.              | High      | High     | Matching and journey planning; Volunteer drivers and availability                                     | P-04, P-11       |
| SH-02 | Volunteer Drivers              | Direct   | Receive suitable journey offers and complete assigned journeys.                                    | Printed schedules may become outdated when journey details change.                             | Medium    | High     | Stakeholder evidence (quote); Changes, completion and follow-up                                       | P-01             |
| SH-03 | Passengers                     | Direct   | Receive reliable transport that meets their needs.                                                 | Uncertainty about return-journey confirmation; inconsistent membership and priority decisions. | Low       | High     | Stakeholder evidence (quote); Journey requests and passenger needs, paragraph 3                       | P-02, P-03       |
| SH-04 | Accessible-vehicle Coordinator | Direct   | Coordinate accessible vehicles and ensure an authorised driver is available for each journey.      | An accessible vehicle may be available when no authorised driver is available.                 | Medium    | High     | Stakeholder evidence (quote); Organisation and current service                                        | P-08             |
| SH-05 | Volunteer Coordinator          | Direct   | Maintain accurate volunteer availability, authorisation checks, training status and offer history. | Records do not show whether a driver declined, was unavailable or was never contacted.         | High      | High     | Stakeholder evidence (quote); Volunteer drivers and availability                                      | P-04, P-08, P-11 |
| SH-06 | Referrer                       | External | Submit journey requests and help ensure passengers receive the final arrangements.                 | Final arrangements may not reach the passenger; unnecessary sensitive details may be shared.   | Low       | Medium   | Stakeholder evidence (quote); Journey requests and passenger needs; Changes, completion and follow-up | P-03, P-10       |
| SH-07 | Partner Organisations          | External | Support the service by making suitable transport resources available.                              | Whether accessible vehicles are available when needed.                                         | Medium    | Medium   | Organisation and current service, paragraph 1                                                         | N/A              |
| SH-08 | Kerry Community Link           | Indirect | Provide reliable community transport and monitor service demand.                                   | Unmet demand, incomplete records and inefficient use of resources.                             | High      | High     | Changes, completion and follow-up                                                                     | P-04, P-07, P-11 |
| SH-09 | Passenger Companion            | Indirect | Accompany or assist a passenger when required.                                                     | Whether the companion is permitted and there is sufficient space for them.                     | Low       | Medium   | Journey requests and passenger needs, paragraph 2                                                     | N/A              |
<!-- Explain any borderline cases, i.e. roles that could fit two categories, and why you chose one. -->

## 4. Actors

### 4.1 Primary actors
| ID    | Actor       | Maps to stakeholder | Why it crosses the boundary                                                                                                                                                 |
| ----- | ----------- | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| AP-01 | Coordinator | SH-01               | Manages journey requests, records driver availability and responses, coordinates suitable drivers and vehicles, and handles changes and journey outcomes through the system |


### 4.2 Supporting actors
| ID    | Actor                          | Maps to stakeholder | Service it provides to the system                                                   |
| ----- | ------------------------------ | ------------------- | ----------------------------------------------------------------------------------- |
| AS-01 | Partner Organisations          | SH-07               | Occasionally provide accessible vehicles that may be needed for suitable journeys.  |
| AS-02 | Volunteer Drivers              | SH-02               | Supply availability, respond to journey offers and report journey outcomes.         |
| AS-03 | Passengers                     | SH-03               | Provide journey details and accessibility requirements, and receive confirmations   |
| AS-04 | Referrers                      | SH-06               | Submit requests on behalf of passengers and may need to receive final arrangements. |
| AS-05 | Accessible-vehicle Coordinator | SH-04               | Provides and updates vehicle information that may be needed for journeys.           |

### 4.3 Offstage stakeholders
| Stakeholder                  | Interest the system must protect                                                                  | Requirement areas it influences                                                                  |
| ---------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| SH-08 (Kerry Community Link) | Reliable coordination of journeys, accurate records and visibility of unmet demand.               | Journey request management, driver matching, workload monitoring and incomplete journey records. |
| SH-09 (Passenger Companion)  | Passengers receive reliable arrangements, and any companion's involvement is properly considered. | Journey confirmations, passenger requirements, accessibility needs and companion arrangements.   |

## 5. Actor–goal catalogue

| Goal ID | Actor | Goal (verb + noun, user-level) | Priority hint | Candidate use case | Source / evidence |
| ------- | ----- | ------------------------------ | ------------- | ------------------ | ----------------- |
| AG-01   | A-01  |                                |               | UC-0x              |                   |

## 6. Stakeholder–problem mapping (optional, short)
| Problem | Most affected stakeholders |
|---------|----------------------------|
| P-01 | |

## 7. Assumptions and open questions
| ID | Type (Assumption / Question) | Statement | Affects | Carry to file 05? |
|----|------------------------------|-----------|---------|-------------------|
| AS-0x / Q-0x | | | | Yes/No |

## 8. Revision notes
<!-- Changes made and why. These are useful for the reflection and AI log later. -->