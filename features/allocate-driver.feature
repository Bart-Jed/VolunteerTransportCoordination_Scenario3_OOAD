Feature: Allocate driver to journey
  Linked to: UC-04, FR-04, FR-05, FR-13

  Rule: Only suitable, authorised drivers are proposed (BR-03)

    Scenario: Coordinator offers a suitable driver
      Given passenger Mary has requested a journey and needs wheelchair space for a 10:30 arrival at the hospital on Sunday
      And volunteer driver John is available, authorised and has current checks for the vehicle with wheelchair accessibility
      When the coordinator offers Mary's journey to John
      Then the journey status is provisional
      And John is offered the journey with accessible vehicle
      And the journey is not yet confirmed
    
    Scenario: No suitable driver is available
      Given passenger Mary has requested a journey and needs wheelchair space for a 10:30 arrival at the hospital on Sunday
      And no available driver is authorised with current checks for the accessible vehicle on Sunday morning
      When the coordinator searches for a suitable driver for Mary's journey
      Then the journey status remains unallocated
      And the coordinator is informed that no suitable drivers are available
      And Mary's request is placed on the waiting list

    Scenario: Familiar driver with expired checks is refused
      Given passenger Mary has requested a journey and needs wheelchair space for a 10:30 arrival at the hospital on Sunday
      And volunteer driver John is familiar with Mary and has driven her before, but his checks expired on Saturday
      When the coordinator tries to offer Mary's journey to John      
      Then the offer to John is refused
      And the coordinator is informed that John's checks have expired 
      And the journey status remains unallocated