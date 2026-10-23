# 04 – Use-Case Model

## System Boundary
<!-- One or two lines: what Linker System covers, and what's outside (emergency transport, vehicle tracking) -->

## Actors

| Actor                          | Type                 | Main goals                                                                                                               | Evidence / assumption                                                                                                                                    |
| ------------------------------ | -------------------- | ------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Coordinator                    | Primary              | Assign vehicles and drivers to a journey, review unallocated requests and unmet demand and arrange a replacement driver. | A-02, Q-05, E-09                                                                                                                                         |
| Volunteer Driver               | Primary / Supporting | View current journey schedule, respond to journey offer, update availability and record journey outcome.                 | E-01, E-03, E-05, C-03, A-13                                                                                                                             |
| Passenger                      | Primary / Supporting | Request a journey and check journey confirmation.                                                                        | Q-02, E-06                                                                                                                                               |
| Referrer                       | Primary / Supporting | Request a journey on a passenger's behalf and check journey confirmation.                                                | A-05, Q-02, P-08                                                                                                                                         |
| Accessible-vehicle coordinator | Primary              | Update vehicle information.                                                                                              | A-12, Stakeholder evidence ("The vehicle can be free while no authorised driver is available."), Volunteer drivers and availability                      |
| Volunteer coordinator          | Primary              | Maintain driver authorisation, training status and review drivers.                                                       | A-12, P-04, Stakeholder evidence ("We cannot tell whether a driver declined, was unavailable or was never contacted."), Organisation and current service |
| Partner Organisation           | Supporting           | Occasionally provide accessible vehicles that may be needed for suitable journeys.                                       | Organisation and current service, paragraph 1                                                                                                            |

## Offstage Stakeholders

| Stakeholder          | Interest                                                                                          | How it affects requirements                                                                      |
| -------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Kerry Community Link | Reliable coordination of journeys, accurate records and visibility of unmet demand.               | Journey request management, driver matching, workload monitoring and incomplete journey records. |
| Passenger Companion  | Passengers receive reliable arrangements, and any companion's involvement is properly considered. | Journey confirmations, passenger requirements, accessibility needs and companion arrangements.   |

## Use-Case Diagram

Source: `diagrams/use-case-model.puml`

## Use-Case Catalogue

| ID    | Name                          | Primary actor                  | Supporting actors                      | Goal                                                                                                                                                                                                                                 | FRs                  | Priority |
| ----- | ----------------------------- | ------------------------------ | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------- | -------- |
| UC-01 | Submit Journey Request        | Passenger / Referrer           | N/A                                    | Submit a journey request (one-way, recurring, return) with information (locations, times, assistance needs) so that it can be recorded and considered for allocation.                                                                | FR-01, FR-03         | Must     |
| UC-02 | View Journey Schedule         | Volunteer Driver               | N/A                                    | View current journey schedule with collection, contact and assistance information.                                                                                                                                                   | FR-08                | Should   |
| UC-03 | Check Journey Confirmation    | Passenger  / Referrer          | N/A                                    | Check journey confirmation, so that the Passenger knows the collection details and whether the return journey is confirmed.                                                                                                          | FR-09                | Must     |
| UC-04 | Allocate Driver to Journey    | Coordinator                    | Volunteer Driver, Partner Organisation | Assign a driver and vehicle that suit the passenger's needs and the journey.                                                                                                                                                         | FR-04, FR-05         | Must     |
| UC-05 | Respond to Journey Offer      | Volunteer Driver               | N/A                                    | Accept or decline the offer. A reason is not required for declining the offer. The response is recorded so the coordinator knows whether the journey is confirmed or still needs a driver.                                           | FR-10 (BR-02), FR-13 | Must     |
| UC-06 | Record Journey Outcomes       | Volunteer Driver               | N/A                                    | Record collection, arrival, return times and outcome including a reason if it was unsuccessful so that the coordinator has complete and consistent journey records.                                                                  | FR-07                | Must     |
| UC-07 | Arrange Replacement Driver    | Coordinator                    | Partner Organisation, Volunteer Driver | When the allocated driver becomes unavailable, allocate a replacement driver who meets the passenger and vehicle requirements.                                                                                                       | FR-11                | Should   |
| UC-08 | Update Vehicle Information    | Accessible-vehicle Coordinator | N/A                                    | Record which accessible vehicles exist, when they are available and their capabilities so that allocation only proposes vehicles that suit the passenger.                                                                            |                      | Could    |
| UC-09 | Maintain Driver Authorisation | Volunteer Coordinator          | N/A                                    | Record each driver's completed checks and training and whether they're authorised for accessible vehicles and when their documentation expires, so that allocation only proposes drivers whose checks and documentation are current. |                      | Could    |
| UC-10 | Update Availability           | Volunteer Driver               | N/A                                    | Update their usual availability, preferred areas, maximum distance and vehicle limitations which can change weekly, so that allocation only proposes drivers who are actually available.                                             |                      | Should   |
| UC-11 | Review Unallocated Requests   | Coordinator                    | N/A                                    | Review journey stages, provisional offers, recurring unmet demand and incomplete records, so that the coordinator can see what still needs action and where demand isn't being met.                                                  | FR-12                | Should   |
UC-08, UC-09 and UC-10 set to could as no FR fit the criteria at this time.

## Detailed Use Case: UC-04 Allocate Driver to Journey

| Field | Detail |
| ----- | ------ |
| ID | |
| Name | |
| Level | User goal |
| Primary actor | |
| Supporting actors | |
| Stakeholders and interests | |
| Preconditions | |
| Trigger | |
| Postconditions (success) | |
| Related requirements | |
| Related business rules | |

### Main Success Scenario
1. 
2. 
3. 

### Extensions
<!-- Number against the step they branch from, e.g. 3a, 3b -->
- **3a.** 
- **5a.** 

### Exceptions
- 

### Open Issues
<!-- Link to questions in requirements/uncertainty-register, e.g. Q-03 -->
- 