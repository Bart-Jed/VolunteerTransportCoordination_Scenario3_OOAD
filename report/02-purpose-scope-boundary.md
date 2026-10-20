## 1. Purpose
Kerry Community Link is a volunteer transport coordination service for residents who have difficulty using ordinary public transport. The proposed Linker System will support journey planning and request management, including journey confirmations, changes, cancellations, driver offers and journey outcome records. It will help coordinators monitor unallocated requests, driver availability, vehicle suitability, transport demand, workload and incomplete journey records. The initial release does not cover emergency transport or real-time vehicle tracking.
## 2. System Boundary
### Inside the boundary
The system will manage journey requests, plan journeys, and help coordinators match passenger requirements with available drivers and suitable vehicles. It will also support changes and cancellations, replacement arrangements, journey confirmations, and the recording of completed or unsuccessful journeys.
### Outside the boundary 
Passengers, volunteer drivers, coordinators, referrers and partner organisations will interact with the system as external actors, with the exact method of interaction depending on their roles. Emergency transport and real-time vehicle tracking are excluded from the initial release.

### Information Flow

|  ID  | Information                                                                                            | Actor                                                        | Direction     |
| :--: | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------ | ------------- |
| F-01 | Journey requests and passenger requirements                                                            | Passenger, via coordinator unless direct access is confirmed | Into System   |
| F-02 | Driver availability and acceptance or rejection of journey offers                                      | Volunteer driver                                             | Into System   |
| F-03 | Vehicle details and suitability requirements                                                           | Coordinator / volunteer driver                               | Into System   |
| F-04 | Journey changes and cancellations                                                                      | Coordinator / passenger                                      | Into System   |
| F-05 | Collection, arrival and return records, or unsuccessful journey details and reasons                    | Volunteer driver                                             | Into System   |
| F-06 | Journey confirmations and relevant schedule details                                                    | Coordinator / passenger / volunteer driver                   | Out of System |
| F-07 | Journey offers and required journey details                                                            | Volunteer Driver                                             | Out of System |
| F-08 | Unallocated requests, provisional offers, driver workload, unmet demand and incomplete journey records | Coordinator                                                  | Out of System |
## 3. In Scope

|  ID   | Capability                                                                           |   Problem IDs    | Evidence                                                  |
| :---: | ------------------------------------------------------------------------------------ | :--------------: | :-------------------------------------------------------- |
| SC-01 | Record Journey Requests.                                                             |       P-03       | E-04                                                      |
| SC-02 | Show Driver Availability to coordinators.                                            |    P-04, P-11    | E-08                                                      |
| SC-03 | Provide Suitability Requirements about Passengers to coordinators.                   |    P-08, P-10    | E-06, E-09                                                |
| SC-04 | Flag Journey Changes to coordinators and drivers.                                    |    P-01, P-03    | E-03, E-04                                                |
| SC-05 | Record Journey Records (unsuccessful, collections, etc)                              |   P-02, P-07,    | Changes, Completion and Follow-up section, paragraphs 1–2 |
| SC-06 | Provide drivers' schedule to drivers                                                 |       P-01       | E-03                                                      |
| SC-07 | Provide confirmations to passengers.                                                 |    P-02, P-03    | E-04                                                      |
| SC-08 | Matching journey details with vehicle suitability for passenger needs.               |    P-08, P-09    | E-01, E-02, E-06, E-09                                    |
| SC-09 | Record driver responses                                                              |    P-04, P-11    | E-08                                                      |
| SC-10 | Handle replacement arrangements when a driver drops out                              |       P-01       | Changes, Completion and Follow-up section, paragraph 1    |
| SC-11 | Show coordinators (unallocated requests, workload, unmet demand, incomplete records) | P-04, P-07, P-11 | Changes, Completion and Follow-up section, paragraph 3    |

## 4. Out of scope

| ID    | Item                                                   | Reason                                                                                                          | Evidence                                                                                                                  |
| ----- | ------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| OS-01 | Emergency Transport                                    | The scenario excludes it.                                                                                       | "The initial scope excludes emergency transport ...". **Changes, completion and follow-up, paragraph 3**                  |
| OS-02 | Real time Vehicle tracking                             | The scenario excludes it.                                                                                       | "The initial scope excludes emergency transport and vehicle tracking." **Changes, completion and follow-up, paragraph 3** |
| OS-04 | Eligibility, Membership, contributions and priorities. | Unconfirmed policy                                                                                              | **Journey requests and passenger needs, paragraph 3**                                                                     |
| OS-05 | Journey Sharing between passengers                     | Unconfirmed policy                                                                                              | **Matching and journey planning, paragraph 1**                                                                            |
| OS-06 | Performing Driver Checks and Verification              | The system records driver authorisation status and uses it for matching but does not perform the checks itself. | **Volunteer drivers and availability, paragraph 2**                                                                       |
| OS-07 | Sensitive health details and financial notes           | Access and sharing rules are not confirmed.                                                                     | **Journey requests and passenger needs, paragraph 1**                                                                     |
| OS-08 | How long the driver waits for a passenger              | A consistent waiting-time policy is not confirmed.                                                              | **Changes, completion and follow-up, paragraph 2**                                                                        |

## 5. Dependencies

| ID     | Dependency                                    | Reason                                                                                                    |
| ------ | --------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| DEP-01 | Accurate passenger and journey information    | Journey planning depends on coordinators having the necessary passenger requirements and journey details. |
| DEP-02 | Current driver availability information       | Coordinators need up-to-date availability to allocate journeys                                            |
| DEP-03 | Vehicle suitability information               | Matching journeys to suitable vehicles depends on knowing vehicle capabilities                            |
| DEP-04 | Drivers providing journey outcome information | Recording collections, returns and unsuccessful journeys depends on drivers reporting outcomes            |
## 6. Assumptions


| ID   | Assumption                                                                                                                                                   | Reason                                                                                                                    | Impact                                                                                                                        | Links                           |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------- |
| A-07 | Coordinators will manage journey requests through the system.                                                                                                | Coordinators currently handle journey requests.                                                                           | Requests may need to be entered or managed differently if passengers submit them directly.                                    | SC-01, SC-11                    |
| A-08 | Coordinators will communicate journey confirmations and changes to passengers by default.                                                                    | The intended recipient of updates is not always confirmed.                                                                | Passengers may not receive confirmations or changes directly.                                                                 | P-03, SC-04, SC-07              |
| A-09 | Drivers will communicate availability, offer responses and journey outcomes via coordinator, who records them in the system.                                 | The method of driver interaction is unconfirmed.                                                                          | Driver records may be incomplete or require a different interaction method.                                                   | P-04, P-07, SC-02, SC-05, SC-09 |
| A-10 | Coordinators will share only the passenger information currently considered necessary for arranging a journey, pending an agreed information-sharing policy. | Permitted information sharing is unconfirmed.                                                                             | The system may expose information that should be restricted or withhold information needed for a journey.                     | P-10, SC-03                     |
| A-11 | A provisional offer does not reserve a driver until the driver accepts it.                                                                                   | Provisional offers are recorded inconsistently.                                                                           | Drivers may appear available when they are already being considered for another journey, or may be unnecessarily unavailable. | P-11, SC-02, SC-09              |
| A-12 | The volunteer coordinator and accessible-vehicle coordinator are separate responsibilities, even if one person performs both.                                | The scenario identifies both coordination responsibilities but does not establish whether they belong to separate people. | Responsibilities or access permissions may be assigned incorrectly.                                                           |                                 |
## 7. Constraints

| ID   | Constraint                                                                                      | Source                                            |
| ---- | ----------------------------------------------------------------------------------------------- | ------------------------------------------------- |
| C-01 | Volunteers must not have access to financial notes or unrelated passenger history.              | Changes, completion and follow-up, paragraph 3    |
| C-02 | The system must record practical transport information rather than detailed health information. | Journey requests and passenger needs, paragraph 2 |
| C-03 | The system must not rely on all volunteer drivers using email or mobile applications.           | Matching and journey planning, paragraph 3        |
