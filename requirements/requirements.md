(FRs, NFRs, MOSCOW)
## 1. Purpose

## 2. Requirement quality approach

## 3. Functional requirements

| ID    | Requirements                                                                                                                                                                                         | Source                                                                               | Actor / goal                      | MoSCoW | Verification |
| :---- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------- | --------------------------------- | :----: | ------------ |
| FR-01 | For each journey request, the system shall record collection point, destination, return time, update receiver, journey type (one-way, return, recurring), required arrival time and contact details. | SC-01,<br>P-03                                                                       | AP-03, AP-04, AG-08, AG-10        |  Must  | Gherkin      |
| FR-02 | The system shall record driver usual availability, preferred areas, max distance and vehicle limitations.                                                                                            | SC-02,<br>P-04, P-11                                                                 | AP-02, AP-06, AG-07               |  Must  | Gherkin      |
| FR-03 | The system shall record passenger's practical needs (wheelchair space, walking aid, companion, assistance to the vehicle).                                                                           | SC-03,<br>E-06                                                                       | AP-03, AP-04, AP-01, AG-08, AG-10 |  Must  | Gherkin      |
| FR-04 | The system shall show the coordinator only the drivers and vehicles that meet the passenger's practical needs.                                                                                       | SC-08,<br>E-09                                                                       | AP-01, AG-01, AP-05               |  Must  | Gherkin      |
| FR-05 | The system shall exclude drivers whose checks or authorisation are not current in journey matching, or who is not authorised to use the accessible vehicle.                                          | P-08, E-05                                                                           | AP-01, AG-01, AP-06, AG-13, AP-05 |  Must  | Gherkin      |
| FR-06 | The system shall notify the coordinator of any journey changes so that the coordinator can contact the affected drivers without digital access.                                                      | SC-04,<br>P-01                                                                       | AP-02, AG-04, AP-01               |  Must  | Gherkin      |
| FR-07 | The system shall record journey outcomes, including collection, arrival and return times, unsuccessful journeys and the reason why.                                                                  | SC-05,<br>P-07, Q-05,                                                                | AP-02, AP-01, AG-05               |  Must  | Gherkin      |
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
| NFR-02 | Privacy       | The system shall record passenger needs only as practical transport requirements and shall provide no field for medical conditions or diagnoses.                         | C-02,<br>P-10            | Must   | Test         |
| NFR-03 | Accessibility | The system shall have the drivers' schedule available in printed form, showing the date and time it was generated.                                                       | P-01, C-03               | Must   | Gherkin      |
| NFR-04 | Performance   | The system shall have a journey visible on the affected drivers' schedule within 15 minutes of being recorded.                                                           | O-01, P-01               | Should | Test         |

## 5. Prioritisation rationale
<!-- This is just a draft not the actual final vers-->
Since the prioritisation rationale is very top heavy (more Musts than should) There will be some trade offs, however a safe and appropriate journey can't happen without said Musts. The emergency transport, vehicle tracking and the deferred policies are in the Won't category by default, as it was stated by the scenario as well as OS-01, OS-02, OS-04 and OS-05.

## 6. Open issues
"15 minutes" (in NFR-04) is a working figure, confirm with coordinators. The reason categories in FR-07 are still unconfirmed.

## 7. Revision notes
