## 1. Purpose
		Kerry Community Link is a volunteer transport coordination service for residents who have difficulty using ordinary public transport. The proposed Linker System will support journey planning and request management, including journey confirmations, changes, cancellations, driver offers and journey outcome records. It will help coordinators monitor unallocated requests, driver availability, vehicle suitability, transport demand, workload and incomplete journey records. The initial release does not cover emergency transport or real-time vehicle tracking.
## 2. System Boundary
### Inside the boundary
The system will manage journey requests, plan journeys, and help coordinators match passenger requirements with available drivers and suitable vehicles. It will also support changes and cancellations, replacement arrangements, journey confirmations, and the recording of completed or unsuccessful journeys.
	
### Outside the boundary 
Passengers, volunteer drivers, coordinators, referrers and partner organisations will interact with the system as external actors, with the exact method of interaction depending on their roles. Emergency transport and real-time vehicle tracking are excluded from the initial release.

### Information Flow

| Information                                                                                            | Actor                                                        | Direction     |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------ | ------------- |
| Journey requests and passenger requirements                                                            | Passenger, via coordinator unless direct access is confirmed | Into System   |
| Driver availability and acceptance or rejection of journey offers                                      | Volunteer driver                                             | Into System   |
| Vehicle details and suitability requirements                                                           | Coordinator / volunteer driver                               | Into System   |
| Journey changes and cancellations                                                                      | Coordinator / passenger                                      | Into System   |
| Collection, arrival and return records, or unsuccessful journey details and reasons                    | Volunteer driver                                             | Into System   |
| Journey confirmations and relevant schedule details                                                    | Coordinator / passenger / volunteer driver                   | Out of System |
| Journey offers and required journey details                                                            | Volunteer Driver                                             | Out of System |
| Unallocated requests, provisional offers, driver workload, unmet demand and incomplete journey records | Coordinator                                                  | Out of System |
## 3. In Scope

| ID    | Capaility | Problem IDs | Evidence |
| ----- | --------- | ----------- | -------- |
| SC-01 |           |             |          |

## 4. Out of scope

| ID    | Item | Reason | Evidence |
| ----- | ---- | ------ | -------- |
| OS-01 |      |        |          |

## 5. Dependencies

| ID     | Dependency | Reason | Controller |
| ------ | ---------- | ------ | ---------- |
| DEP-00 |            |        |            |
## 6. Assumptions

| ID   | Assumption | Reason | Changes | Links |
| ---- | ---------- | ------ | ------- | ----- |
| A-07 |            |        |         |       |
## 7. Constraints

| ID   | Constraint | Source |
| ---- | ---------- | ------ |
| C-00 |            |        |