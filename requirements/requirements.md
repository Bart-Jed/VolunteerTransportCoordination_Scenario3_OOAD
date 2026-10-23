## 1. Purpose
The purpose of this file is to list out requirements, and to distinguish between different requirements the system does or does not using the MoSCoW principle. This page is to list out functional and non-functional requirements and decide which ones prioritise over the other. I combined problems from `01-scenario-interpretation` and the scope from `02-purpose-scope-boundary`, as well as actors and actor goals from `03-stakeholders-actors`. This helped me to stay close to evidence and issues mentioned.


## 2. Requirement quality approach
The quality approach to requirements was to make sure every requirement started with "The system shall..." And states one capability. This makes the requirements 'atomic' and avoids overlap.
Each requirement has a single verification method, and the non-functional requirements have a measurable condition, such as the 15 minute update time or no field for medical conditions.
Each requirement links back to a scope item, a problem and an actor goal so nothing exists without evidence.
MoSCoW is based on whether a journey can be safely requested, arranged and confirmed without the requirement, and the prioritisation rationale is explained in section 5.

## 3. Functional requirements

| ID    | Requirements                                                                                                                                                                                         | Source                                                                               | Actor / goal                      | MoSCoW | Verification |
| :---- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------- | --------------------------------- | :----: | ------------ |
| FR-01 | For each journey request, the system shall record collection point, destination, return time, update receiver, journey type (one-way, return, recurring), required arrival time and contact details. | SC-01,<br>P-03                                                                       | AP-03, AP-04, AG-08, AG-10        |  Must  | Gherkin      |
| FR-02 | The system shall record driver usual availability, preferred areas, max distance and vehicle limitations.                                                                                            | SC-02,<br>P-04, P-11                                                                 | AP-02, AP-06, AG-07               |  Must  | Gherkin      |
| FR-03 | The system shall record passenger's practical needs (wheelchair space, walking aid, companion, assistance to the vehicle).                                                                           | SC-03,<br>E-06                                                                       | AP-03, AP-04, AP-01, AG-08, AG-10 |  Must  | Gherkin      |
| FR-04 | The system shall show the coordinator only the drivers and vehicles that meet the passenger's practical needs.                                                                                       | SC-08,<br>E-09                                                                       | AP-01, AG-01, AP-05               |  Must  | Gherkin      |
| FR-05 | The system shall exclude from journey matching any driver whose checks or authorisation are not current, or who is not authorised to use the accessible vehicle.                                     | P-08, E-05                                                                           | AP-01, AG-01, AP-06, AG-13, AP-05 |  Must  | Gherkin      |
| FR-06 | The system shall notify the coordinator of any journey changes so that the coordinator can contact the affected drivers without digital access.                                                      | SC-04,<br>P-01                                                                       | AP-02, AG-04, AP-01               |  Must  | Gherkin      |
| FR-07 | The system shall record journey outcomes, including collection, arrival and return times, unsuccessful journeys and the reason why.                                                                  | SC-05,<br>P-07, Q-05                                                                 | AP-02, AP-01, AG-05               |  Must  | Gherkin      |
| FR-08 | The system shall show each driver's current schedule to drivers.                                                                                                                                     | SC-06,<br>P-01                                                                       | AP-02, AG-04                      | Should | Gherkin      |
| FR-09 | The system shall notify the update receiver of journey and return confirmations.                                                                                                                     | SC-07,<br>P-03, P-02                                                                 | AP-03, AP-04, AG-09, AG-11        |  Must  | Gherkin      |
| FR-10 | The system shall record the drivers' response type (accepted, declined, unavailable or not contacted).                                                                                               | SC-09,<br>P-04, P-11                                                                 | AP-02, AG-06, AP-01               |  Must  | Gherkin      |
| FR-11 | The system shall check available drivers and propose to the coordinator which driver meets the original passenger's and vehicle requirements.                                                        | SC-10,<br>FR-04,<br>FR-05,<br>**Changes, completion and follow-up, paragraph 1**<br> | AP-01, AG-03                      | Should | Gherkin      |
| FR-12 | The system shall generate a report for the coordinator of any unallocated requests, workload, provisional offers, unmet demand and any incomplete records.                                           | SC-11,<br>P-11, P-07                                                                 | AP-01, AG-02                      | Should | Inspection   |
| FR-13 | The system shall record the journey stages (unallocated, provisional, confirmed, completed/unsuccessful/cancelled) which is only confirmed after the driver accepts.                                 | A-11, P-11                                                                           | AP-01, AG-01                      |  Must  | Gherkin      |

## 4. Non-functional requirements

| ID     | Category      | Requirement (measurable)                                                                                                                                                 | Source                   | MoSCoW | Verification |
| ------ | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------ | ------ | ------------ |
| NFR-01 | Security      | The system shall hide information from volunteers so that volunteers have no access at all to financial notes or passenger history unrelated to their assigned journeys. | C-01, <br>P-10, <br>O-10 | Must   | Test         |
| NFR-02 | Privacy       | The system shall record passenger needs only as practical transport requirements and shall provide no field for medical conditions or diagnoses.                         | C-02,<br>P-10            | Must   | Inspection   |
| NFR-03 | Accessibility | The system shall have the drivers' schedule available in printed form, showing the date and time it was generated.                                                       | P-01, C-03               | Must   | Gherkin      |
| NFR-04 | Performance   | The system shall have a journey change visible on the affected driver's schedule within 15 minutes of being recorded.                                                    | O-01, P-01               | Should | Test         |

## 5. Prioritisation rationale
Requirements were classified as **Must** if, without it, the journey could not be requested, arranged or meet the passenger's needs. For example, FR-01 (Journey information) and FR-09 (Journey confirmation) are **Musts**, because without them there would be no journey information for both drivers and passengers, and the problem P-02 (return confirmation) would remain.

Some requirements were lowered. FR-08 (Showing the driver's schedule to them) was lowered to **Should**, because FR-06 (coordinator notifying driver of any schedule changes) and NFR-03 already cover the minimum, as the coordinator is flagged to contact the drivers, and dated printouts exist. I also had to take in account drivers that don't have digital access (C-03). No **Could** requirement were identified because every requirement traces to a recorded problem.

**Won't** requirements such as emergency transport and real time vehicle tracking (OS-01, OS-02) are excluded by the scenario, however other requirements such as eligibility, membership, priority and journey sharing (OS-04, OS-05) are deferred until the policy is confirmed (Q-01, Q-02).

## 6. Open issues
"15 minutes" (NFR-04) is a working figure recorded as A-14. Confirm with coordinators

The reason categories in FR-07 are still unconfirmed, also links to Q-05.

"Confirmed" (in FR-13) is when a driver accepts the offer. This was not set in the scenario, so it was based on the assumption: A-01, BR-07.

"The receiver" (in FR-09) is the passenger (links to A-05). Whether the referrer also receives updates is unconfirmed. Confirm with coordinator or Kerry Community Link on the policy.

"Current" (in FR-05) meaning the driver's checks, training or authorisation has been checked or whether they were expired.

## 7. Revision notes
- Split FR-03 into FR-03 and FR-04 to keep requirements atomic. 
- FR-08 lowered to **Should** (see section 5). 