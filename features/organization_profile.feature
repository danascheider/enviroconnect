@organizations
Feature: Organization profile

  Scenario: Organization with incomplete profile
    Given an organization
    When I visit the organization's profile
    Then I should see its name
    And I should not see its address_2