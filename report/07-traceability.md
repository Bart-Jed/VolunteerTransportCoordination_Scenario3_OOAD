# 07 – Traceability

## Purpose
This file's purpose is to show how problems or goals flow to requirements, use cases, Gherkin files and domain concepts.

## Traceability Matrix

| Problem / Goal           | Requirement | Priority | Business rule              | Use case     | Gherkin scenario                                                      | Domain concepts                                                         |
| ------------------------ | ----------- | -------- | -------------------------- | ------------ | --------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| P-03, AG-08, AG-10       | FR-01       | Must     | —                          | UC-01        | -                                                                     | Passenger, Referrer, Journey Request                                    |
| P-04, P-11, AG-07        | FR-02       | Must     | —                          | UC-10        | -                                                                     | Volunteer Driver, Driver Availability                                   |
| AG-08, AG-10             | FR-03       | Must     | —                          | UC-01        | -                                                                     | Journey Request, Passenger Need                                         |
| AG-01                    | FR-04       | Must     | BR-01, BR-03, BR-06, BR-08 | UC-04        | Coordinator offers a suitable driver, No suitable driver is available | Passenger Need, Volunteer Driver, Vehicle, Driver Availability, Partner |
| P-08, AG-01, AG-13       | FR-05       | Must     | BR-01, BR-03               | UC-04, UC-09 | Familiar driver with expired checks is refused                        | Volunteer Driver, Driver Check, Vehicle                                 |
| P-01, AG-14              | FR-06       | Must     | —                          | UC-12        | -                                                                     | Journey, Volunteer Driver                                               |
| P-07, AG-05              | FR-07       | Must     | —                          | UC-06        | -                                                                     | Journey                                                                 |
| P-01, AG-04              | FR-08       | Should   | —                          | UC-02        | -                                                                     | Volunteer Driver, Journey                                               |
| P-03, P-02, AG-09, AG-11 | FR-09       | Must     | BR-07                      | UC-03        | -                                                                     | Passenger, Journey                                                      |
| P-04, P-11, AG-06        | FR-10       | Must     | BR-02, BR-06               | UC-05        | -                                                                     | Offer, Volunteer Driver, Coordinator                                    |
| AG-03                    | FR-11       | Should   | BR-01, BR-02               | UC-07        | -                                                                     | Journey, Offer, Volunteer Driver                                        |
| P-11, P-07, AG-02        | FR-12       | Should   | —                          | UC-11        | -                                                                     | Journey Request, Journey, Offer                                         |
| P-11, AG-06              | FR-13       | Must     | BR-06, BR-07               | UC-05        | Coordinator offers a suitable driver                                  | Journey, Offer                                                          |



## Coverage Check
- Must Have FRs with no use case: None
- Must Have FRs with no Gherkin scenario: FR-01, FR-02, FR-03, FR-06, FR-07, FR-09, FR-10
- Use cases with no requirement: UC-08

## Gaps and Notes
- Gherkin in this CA covers only UC-04, which is the core allocation flow. The other use cases will be done in CA2.
- UC-08 has no FR yet, so it's marked **Could** and is deferred.
- NFRs are excluded from the matrix because they're verified by inspection or measurement rather than through use cases or Gherkin, and their verification methods are in the requirements catalogue.