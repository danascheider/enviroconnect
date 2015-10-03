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