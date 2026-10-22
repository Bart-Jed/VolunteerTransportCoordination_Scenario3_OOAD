## 1. Purpose
A business rule is a policy of the organisation that applies regardless of any software, and not a system feature. Each rule constrains requirements and assumed rules are marked separately until confirmed.
## 2. Business rules

| ID    | Rule                                                                                 | Status    |                              Evidence                              | Affects requirements | Notes                                                                        |
| ----- | ------------------------------------------------------------------------------------ | --------- | :----------------------------------------------------------------: | :------------------: | ---------------------------------------------------------------------------- |
| BR-01 | Replacement driver must meet the passenger's and vehicle's requirements.             | Confirmed |  **Changes, completion and follow-up, paragraph 1**,<br>E-09<br>   | FR-11, FR-04, FR-05  |                                                                              |
| BR-02 | A volunteer may decline a journey without giving a reason.                           | Confirmed |        **Volunteer drivers and availability, paragraph 1**         |     FR-10, FR-11     |                                                                              |
| BR-03 | Only drivers who are specifically authorised may drive accessible vehicles.          | Confirmed |   **Volunteer drivers and availability, paragraph 2**, <br>E-05    |     FR-05, FR-04     |                                                                              |
| BR-04 | Volunteer drivers should not see financial notes or unrelated passenger history.     | Confirmed |    **Changes, completion and follow-up, paragraph 3**,<br>C-01     |        NFR-01        |                                                                              |
| BR-05 | Practical transport information is recorded rather than detailed health information. | Confirmed | **Journey requests and passenger needs, paragraph 2**,<br>C-02<br> |        NFR-02        |                                                                              |
| BR-06 | Driver is not reserved until the driver accepts the provisional offer.               | Assumed   |                             A-11, Q-07                             | FR-13, FR-10, FR-04  | Confirm with coordinators.                                                   |
| BR-07 | A journey is confirmed only when the driver accepts and the coordinator finalises.   | Assumed   |                                A-01                                |     FR-13, FR-09     | Confirm with coordinators.                                                   |
| BR-08 | Passengers may only share a journey if they have explicitly agreed to it.            | Assumed   |                             A-04, Q-02                             |        FR-04         | Confirm with coordinators and passengers.<br>Agreement scope is unconfirmed. |
## 3. Rules not yet defined
<!-- Policies the scenario says are unresolved: list them and point to the Q-xx in the uncertainty register. Do NOT write them as rules. -->

| Question ID | Unresolved Policy                                                   | Affects             |
| ----------- | ------------------------------------------------------------------- | ------------------- |
| Q-01        | Priority when demand exceeds drivers.                               | FR-04, FR-12        |
| Q-03        | Reviewing and reassigning recurring journeys.                       | FR-11               |
| Q-04        | Maximum waiting time for a passenger who isn't ready.               | FR-07               |
| Q-05        | Categories for unsuccessful offers, cancellations and unmet demand. | FR-07, FR-10, FR-12 |
| Q-06        | What information can be shared with drivers and partners.           | NFR-01, BR-04       |


## 4. Revision notes
- For `Rules not yet defined`, I deliberately skipped Q-02 and Q-07 as they're already covered by assumed rules (BR-08 and BR-06). 