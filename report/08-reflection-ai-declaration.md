**Tool:** Claude (Anthropic), claude.ai – Claude Opus 5.5
**Use:** Section layouts, explanation of concepts, and critique of my own drafts. AI also supplied some outlines, examples and corrected mappings, which I checked and adapted, these are recorded in the log below and revised after checking feedback against the scenario and CA1 brief. 

| Date      | Artefact                | AI suggestion (summary)                                                                       | My evaluation                                                                          | Decision                                                                                  | Evidence                         |
| --------- | ----------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------------- |
| 20 Oct    | Actor classification    | Explained primary vs supporting actors; offered direct-access and coordinator-mediated models | Compared both against P-01, P-02, P-07 and C-03; direct access addressed more problems | Modified: direct access with coordinator fallback (A-13)                                  | report/03 §3                     |
| 20 Oct    | Actor model             | Suggested a single Requester actor and merging coordinator roles                              | Passengers and referrers have different goals and evidence; merging would hide that    | Rejected                                                                                  | report/03 §2.1, A-12             |
| 21 Oct    | Functional requirements | Flagged vague wording, weak testability and wrong actor–goal links                            | Checked against actor goals and scenario evidence                                      | Modified: rewrote FR-01–FR-13; split FR-03/FR-04                                          | requirements §3                  |
| 22 Oct    | Business rules          | Pointed out BR-02/BR-03 described facts, not rules                                            | Rechecked the scenario paragraph; they didn't prescribe behaviour                      | Rejected my drafts; replaced with rules on declining and accessible-vehicle authorisation | business-rules BR-02–03          |
| 22/23 Oct | Use-case catalogue      | Critique of goal wording, actor roles and priorities.                                         | Rechecked my actor roles and their priorities.                                         | I rewrote the goals, and rejected the incorrect ones and added UC-10 to UC-12             | report/04 catalogue              |
| 23 Oct    | Gherkin                 | Gave an example from a different domain (library), and critique.                              | I learned how Gherkin is correctly structured                                          | I wrote the scenarios, and revised them after critique                                    | features/allocate-driver.feature |
| 23 Oct    | Domain Model            | AI flagged multiplicities and supplied a corrected association table                          | Checked each row and questioned why.                                                   | I rejected some rows from the proposed association table and wrote my own.                | report/06-domain-model-rationale |
| 23 Oct    | Traceability / backlog  | Suggested pointers for the "so that" part of use cases, but didn't give direct answers.       | I acknowledged the pointers and checked whether they make sense for the use case.      | With the help of the pointers I was able to come up with more concise wording.            | requirements/backlog             |

**Verification:** each suggestion was checked against the scenario and brief before changes were made; IDs were cross-checked between files for consistency.


---

# Reflection

## Key decisions
1. Journey Request vs Journey
	- I decided to keep them as separate classes because one journey request can have many journeys, depending on whether the request is a recurring or a return ticket. This is also why it has a "1 to none or many" relationship in the domain rationale. The alternative would be one "Journey" class, but then return journeys would require another request for the journey back, and recurring journey requests would render being useless as the request would have to be posted every recurrence, instead of being one request and many journeys.
2. Passenger as a direct actor
	- I decided that the Passenger will be a direct actor because the passenger interacts with the system by submitting a request, and receiving confirmation. The evidence can be found in P-02 (return not being confirmed) and P-03 (final arrangements not reaching the passenger). The alternative was to have the coordinator enter requests on the passenger's behalf, which were assumed (A-07 and A-08), but got superseded as the passengers and referrers would use the system directly.
3. Driver Check as a class
	- Driver Check was a class because there can be many "checks" tied to one driver, and there are different types of checks. The  alternative was to keep it as an attribute, however this would not allow me to record each check's separate expiry date, and their type.
## Revisions
- My first catalogue goals were more aimed at actions rather than outcomes and why they matter. I asked Claude (the AI) to check for any grammar mistakes and that's when Claude flagged my goals, and generated the table again with proposed goals, which I then rejected or accepted. I learned how to structure goals so they have a definite "done" at the end, and later learned how useful that will be for the use cases.
## Limitations
If I had more time to do this project and I didn't spend too much time on the first file, I would be able to do more Gherkin `.feature` files, as I really enjoyed the process. I only did one file as I knew I could get 2 or 3 scenarios out of my use cases, and since the minimum required that was specified in the CA brief was 3-5 scenarios, I assumed it was acceptable.
Furthermore, if I knew back then what I know now, I would have more precise problems as some problems had weak consequences, or some FRs (FR-03, FR-04, FR-11) don't trace to a problem ID, as with my timeframe I felt very limited and I seemed to rush through the process. I would have also added the non-functional requirements into the traceability tables, but I left them out because they don't map to use cases, but a separate NFR trace to problems and constraints would make coverage clearer.
## Unresolved questions
1. Sharing consent
	- If this question was answered, if the consent turned out to be general, it would become an attribute on Passenger and that would make 3d disappear. If it was per journey, it would stay as a check during allocation, which would probably be an attribute on Journey Request. BR-08 would also change from Assumed to Confirmed.  
2. Contribution arrangements
	- If this question was answered, depending on the policy it would become an attribute of Passenger (more accurately per passenger), Journey (per trip), or a class of its own. It probably would also need a functional requirement, and would have to link to NFR-01 (volunteers can't see financial notes). 
3. When an offer reserves a driver
	- If this question was answered, and the provisional offer does reserve the driver, then FR-04 would have to exclude drivers with pending offers, and Offer would need an expiry or response deadline, and step 5 of UC-04 would change. It would also decide whether overlapping offers are allowed. 