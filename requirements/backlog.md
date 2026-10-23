## **US-01** - Coordinator offers a suitable driver

| Field                    | Detail                                                                                                                                                                                   |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Story                    | As a coordinator, I want to offer a journey only to drivers and vehicles that suit the accessibility needs of a passenger so that the passenger gets transport that actually suits them. |
| Business value           | Reduces failed or unsafe journeys caused by unsuitable drivers or vehicles, and saves coordinator time spent on offers that can’t work.                                                  |
| Stakeholder / actor goal | AG-01                                                                                                                                                                                    |
| Requirements             | FR-04                                                                                                                                                                                    |
| Business rules           | BR-03                                                                                                                                                                                    |
| Use case                 | UC-04                                                                                                                                                                                    |
| Priority                 | Must                                                                                                                                                                                     |
| Gherkin                  | Coordinator offers a suitable driver, No suitable driver is available                                                                                                                    |
| Questions / assumptions  | Q-03, Q-07, Q-08, A-02, A-06                                                                                                                                                             |
### Acceptance criteria
- AC-01.1: If no suitable driver is available, the request goes on a waiting-list.
- AC-01.2: Giving an offer to a driver sets the journey status to provisional. 
- AC-01.3: Only drivers that meet the passenger's needs will be shown.
## **US-02** - Excluding drivers with lapsed checks

| Field                    | Detail                                                                                                                                                     |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Story                    | As a coordinator, I want to exclude drivers that have expired checks and training, so that I don't allocate someone who isn't safe or authorised to drive. |
| Business value           | Protects passengers and the organisation from unauthorised drivers.                                                                                        |
| Stakeholder / actor goal | AG-01, AG-13                                                                                                                                               |
| Requirements             | FR-05                                                                                                                                                      |
| Business rules           | BR-01, BR-03                                                                                                                                               |
| Use case                 | UC-04, UC-09                                                                                                                                               |
| Priority                 | Must                                                                                                                                                       |
| Gherkin                  | Familiar driver with expired checks is refused                                                                                                             |
| Questions / assumptions  | Q-10                                                                                                                                                       |
### Acceptance criteria
- AC-02.1: A driver with expired checks is not proposed.
- AC-02.2: Trying to select a driver with expired checks directly is refused, and the reasons why will show.
- AC-02.3: A driver without accessible-vehicle authorisation isn't proposed for an accessible vehicle.
## **US-03** - Driver responds to an offer

| Field                    | Detail                                                                                                                                                                                          |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Story                    | As a volunteer driver, I want to respond to a journey offer by accepting or declining it, so that the coordinator knows straight away whether the journey is confirmed or needs another driver. |
| Business value           | The confusion between declined and never contacted will be minimised.                                                                                                                           |
| Stakeholder / actor goal | AG-06                                                                                                                                                                                           |
| Requirements             | FR-10, FR-13                                                                                                                                                                                    |
| Business rules           | BR-02, BR-06, BR-07                                                                                                                                                                             |
| Use case                 | UC-05                                                                                                                                                                                           |
| Priority                 | Must                                                                                                                                                                                            |
| Gherkin                  | -                                                                                                                                                                                               |
| Questions / assumptions  | Q-07, A-01                                                                                                                                                                                      |
### Acceptance criteria
- AC-03.1: A declined offer is recorded without a reason.
- AC-03.2: Accepting the offer makes the journey confirmed.
- AC-03.3: Declining the offer makes the journey return to needing to find a driver.

## **US-04** - Driver records a journey outcome

| Field                    | Detail                                                                                                                                 |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| Story                    | As a volunteer driver, I want to record a journey outcome, so that the coordinator has a complete, consistent record of what happened. |
| Business value           | Shows patterns in unsuccessful journeys, and fixes the inconsistent reasons problem.                                                   |
| Stakeholder / actor goal | AG-05                                                                                                                                  |
| Requirements             | FR-07                                                                                                                                  |
| Business rules           | -                                                                                                                                      |
| Use case                 | UC-06                                                                                                                                  |
| Priority                 | Must                                                                                                                                   |
| Gherkin                  | -                                                                                                                                      |
| Questions / assumptions  | Q-05, A-13                                                                                                                             |
### Acceptance criteria
- AC-04.1: Collection, arrival and return are recorded.
- AC-04.2: An unsuccessful journey requires a reason.
- AC-04.3: The coordinator can see an outcome.

## **US-05** - Passenger checks the return journey is confirmed

| Field                    | Detail                                                                                                            |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| Story                    | As a passenger, I want to check whether my journey is confirmed, so that I can plan my day knowing I'll get home. |
| Business value           | Avoids passengers being left stranded, and fewer phone calls asking for confirmation.                             |
| Stakeholder / actor goal | AG-09, AG-11                                                                                                      |
| Requirements             | FR-09                                                                                                             |
| Business rules           | BR-07                                                                                                             |
| Use case                 | UC-03                                                                                                             |
| Priority                 | Must                                                                                                              |
| Gherkin                  | -                                                                                                                 |
| Questions / assumptions  | A-05, BR-07                                                                                                       |
### Acceptance criteria
- AC-05.1: The passenger can see whether the outward journey is confirmed.
- AC-05.2: The return journey status is shown separately.
- AC-05.3: Even if a referrer submitted the request, the passenger will still receive the journey confirmation.