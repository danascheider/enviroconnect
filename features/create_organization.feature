@organizations
Feature: Create organization

  Background:
    Given I have visited '/organizations/new'
  
  Scenario: Create organization with valid attributes
    When I submit the organization creation form with:
      | name               |
      | Foobar Corporation |
    Then there should be a new organization called 'Foobar Corporation'
    And I should see the new organization's profile

  Scenario: Attempt to create organization with invalid attributes
    When I submit the organization creation form with:
      | mission                     |
      | Do good stuff for the world |
    Then there should not be a new organization
    And I should see an error message