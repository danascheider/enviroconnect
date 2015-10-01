Feature: Edit organization
  
  Scenario: Show the edit form
    Given an organization
    When I visit the organization's edit page
    Then I should see the organization's edit form