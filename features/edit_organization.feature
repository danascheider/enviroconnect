Feature: Edit organization
  
  Background:
    Given an organization
    When I visit the organization's edit page

  Scenario: Show the edit form
    Then I should see the organization's edit form

  Scenario: Valid update
    When I fill in the 'organization[phone]' field with '(503) 555-1212'
    And I submit the edit form for the organization
    Then the organization's 'phone' attribute should be '(503) 555-1212'

  Scenario: Invalid update
    When I fill in the 'organization[zip]' field with 'foobar'
    And I submit the edit form for the organization
    Then the organization's 'zip' attribute should not be 'foobar'
    And it should re-render the organization's edit form