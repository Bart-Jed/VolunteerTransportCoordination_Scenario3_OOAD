## 1. Purpose of this section
The purpose of this section is to distinguish between stakeholders and actors. Stakeholders are everyone who has an interest in the system, whereas actors are the roles that actually interact with the system across the boundary from the `02-purpose-scope-boundary` file.
I have separated them because even if some stakeholders don't use the system, their interests still shape the system, for example: Kerry Community Link: records, unmet demand, and the Passenger Companion: companion permission.
Actor goals will become the use cases, whereas the stakeholder concerns feed the requirements and business rules.

## 2. Stakeholder catalogue

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
### 2.1 Classification Notes
Each stakeholder came from each scenario section and stakeholder quotes. I then decided whether they should have Direct, Indirect or External relationship to the system.

I decided to merge relatives and community workers into one stakeholder (referrers) because they both share the same goal to make a request for the passenger, and share their needs and concerns.
I decided to make referrers external because they are outside of the Kerry Community Link but can still submit journey requests.

I decided to drop the Members because as far as the system is concerned, a member and non-member will both make the same journey request, and the priority rules are unconfirmed, so membership is treated as a passenger detail rather than a separate stakeholder.

I decided that drivers should use the system directly because they will be able to view their schedules through the system which would address P-01, and they can also record journey outcomes on one platform which would address P-07.
However, the scenario mentioned not all drivers use email or apps, and C-03 also says the system cannot rely on email or apps. 
This can be worked around by being able to print schedules from the system and the coordinator recording their updates.

I decided Passengers and referrers will have direct access to the system as well so that they can check their journey information directly, which also addresses P-02 and P-03.

I decided that I will split up coordinators into their roles because each has a different concern (matching, authorised drivers, offer tracking) and a separate quote. (A-06 in `02-purpose-scope-boundary`)


## 3. Actors

### 3.1 Primary actors
| ID    | Actor                          | Maps to stakeholder | Why it crosses the boundary                                                                                                                                                 |
| ----- | ------------------------------ | ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| AP-01 | Coordinator                    | SH-01               | Manages journey requests, records driver availability and responses, coordinates suitable drivers and vehicles, and handles changes and journey outcomes through the system |
| AP-02 | Volunteer Drivers              | SH-02               | Supply availability, respond to journey offers and report journey outcomes.                                                                                                 |
| AP-03 | Passengers                     | SH-03               | Provide journey details and accessibility requirements, and receive confirmations                                                                                           |
| AP-04 | Referrers                      | SH-06               | Submit requests on behalf of passengers and may need to receive final arrangements.                                                                                         |
| AP-05 | Accessible-vehicle Coordinator | SH-04               | Provides and updates vehicle information that may be needed for journeys.                                                                                                   |
| AP-06 | Volunteer Coordinator          | SH-05               | Maintains driver records, availability and authorisation status.                                                                                                            |

### 3.2 Supporting actors
| ID    | Actor                 | Maps to stakeholder | Service it provides to the system                                                  |
| ----- | --------------------- | ------------------- | ---------------------------------------------------------------------------------- |
| AS-01 | Partner Organisations | SH-07               | Occasionally provide accessible vehicles that may be needed for suitable journeys. |
Partner Organisations is a supporting actor because the system calls on them when an accessible vehicle is needed, but never start an interaction themselves.

### 3.3 Offstage stakeholders
| Stakeholder                  | Interest the system must protect                                                                  | Requirement areas it influences                                                                  |
| ---------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| SH-08 (Kerry Community Link) | Reliable coordination of journeys, accurate records and visibility of unmet demand.               | Journey request management, driver matching, workload monitoring and incomplete journey records. |
| SH-09 (Passenger Companion)  | Passengers receive reliable arrangements, and any companion's involvement is properly considered. | Journey confirmations, passenger requirements, accessibility needs and companion arrangements.   |

## 4. Actor–goal catalogue
_MoSCoW_

| Goal ID | Actor | Goal                                               | Priority hint | Candidate use case | Source / evidence                                                                                          |
| ------- | ----- | -------------------------------------------------- | ------------- | ------------------ | ---------------------------------------------------------------------------------------------------------- |
| AG-01   | AP-01 | Assign vehicles and drivers to a journey.          | Must          | UC-0x              | Matching and journey planning, paragraph 1, E-09, SC-08                                                    |
| AG-02   | AP-01 | Review unallocated requests and unmet demand.      | Must          | UC-0x              | Changes, completion and follow-up, Volunteer drivers and availability,<br>SC-11, P-07                      |
| AG-03   | AP-01 | Arrange a replacement driver.                      | Should        | UC-0x              | Changes, completion and follow-up, paragraphs 1–2,<br>SC-10, P-01                                          |
| AG-04   | AP-02 | View current journey schedule.                     | Must          | UC-0x              | Changes, completion and follow-up, E-03, SC-06, P-01                                                       |
| AG-05   | AP-02 | Record a journey outcome.                          | Should        | UC-0x              | Changes, completion and follow-up, paragraph 2, O-07                                                       |
| AG-06   | AP-02 | Respond to journey offer.                          | Must          | UC-0x              | Volunteer drivers and availability, paragraph 2, E-08, O-11                                                |
| AG-07   | AP-02 | Update availability.                               | Should        | UC-0x              | Volunteer drivers and availability, paragraph 1                                                            |
| AG-08   | AP-03 | Request a journey.                                 | Must          | UC-0x              | Organisation and current service, paragraph 1, Journey requests and passenger needs, paragraph 1,<br>SC-01 |
| AG-09   | AP-03 | Check journey confirmation.                        | Should        | UC-0x              | Changes, completion and follow-up, P-02, O-02                                                              |
| AG-10   | AP-04 | Request a journey on a passenger's behalf.         | Must          | UC-0x              | Organisation and current service, paragraph 1, Changes, completion and follow-up, E-04,<br>SC-01, P-03     |
| AG-11   | AP-04 | Check journey confirmation.                        | Should        | UC-0x              | Changes, completion and follow-up, E-04, O-03                                                              |
| AG-12   | AP-05 | Update vehicle information.                        | Should        | UC-0x              | Organisation and current service, paragraph 1, E-01, E-02                                                  |
| AG-13   | AP-06 | Maintain driver authorisation and training status. | Must          | UC-0x              | Volunteer drivers and availability, paragraph 2, E-05, P-08, O-08                                          |



## 5. Assumptions and open questions
| ID   | Assumption Or Question     | Statement                                                                                                                                    | Affects                                                                                     | Carry to uncertainty register? |
| ---- | -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------ |
| A-13 | Assumption - Driver Access | The drivers will use the system. The drivers without digital access will use printed schedules, with coordinators informing them on updates. | The driver goals (AG-04 to AG-07), the actor itself (AP-02), as well as C-03, P-01 and P-07 | Yes                            |
| Q-08 | Question - Driver Access   | How many drivers lack digital access?                                                                                                        | A-13                                                                                        | Yes                            |
| Q-09 | Question - Driver Access   | Are coordinator-recorded updates acceptable for drivers without digital access?                                                              | A-13, AP-02                                                                                 | Yes                            |


## 6. Revision notes
Drivers, passengers and referrers moved from supporting to primary actors; UC IDs must be made once Use Cases are made in `04-use-cases`.