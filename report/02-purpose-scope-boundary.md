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

|  ID   | Capability                                                                                 | Problem IDs | Evidence |
| :---: | ------------------------------------------------------------------------------------------ | :---------: | -------- |
| SC-01 | Record Journey Requests.                                                                   |    P-01     |          |
| SC-02 | Show Driver Availability to coordinators.                                                  |    P-04     |          |
| SC-03 | Provide Suitability Requirements about Passengers to coordinators.                         |             |          |
| SC-04 | Flag Journey Changes to coordinators and drivers.                                          |             |          |
| SC-05 | Provide Journey Records (unsuccessful, collections, etc)                                   | P-02, P-07, |          |
| SC-06 | Provides drivers' schedule to drivers                                                      |    P-01     |          |
| SC-07 | Giving confirmations to passengers.                                                        |    P-03     |          |
| SC-08 | Matching journey details with vehicle suitability for passenger needs.                     |             |          |
|       | Recording driver responses                                                                 |             |          |
|       | Provide replacement arrangements when a driver drops out                                   |             |          |
|       | Monitoring coordinators (unallocated requests, workload, unmet demand, incomplete records) |             |          |

## 4. Out of scope

| ID    | Item                                  | Reason                                                        | Evidence                                                                                                                   |
| ----- | ------------------------------------- | ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| OS-01 | Emergency Transport                   | The scenario excludes it.                                     | "The initial scope excludes emergency transport ...". **Changes, completion and follow-up, paragraph 3**                   |
| OS-02 | Real time Vehicle tracking            | The scenario excludes it.                                     | "The initial scope excludes emergency transport and vehicle tracking." ** Changes, completion and follow-up, paragraph 3** |
| OS-03 | Physical Transportation of passengers | The physical transportation is performed by volunteer drivers | **Purpose and scope of the proposed Linker System**                                                                        |
| OS-04 |                                       |                                                               |                                                                                                                            |

## 5. Dependencies

| ID     | Dependency | Reason | Controller |
| ------ | ---------- | ------ | ---------- |
| DEP-01 |            |        |            |
## 6. Assumptions

| ID   | Assumption | Reason | Impact | Links |
| ---- | ---------- | ------ | ------ | ----- |
| A-01 |            |        |        |       |
## 7. Constraints

| ID   | Constraint | Source |
| ---- | ---------- | ------ |
| C-01 |            |        |
