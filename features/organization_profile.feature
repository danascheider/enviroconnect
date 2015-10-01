Feature: Organization profile

  Scenario Outline:
    Given an organization
    When I visit the organization's profile
    Then I should see its <attribute>
    And I should not see its <undefined_attribute>
      Examples:
        | attribute | undefined_attribute |
        | name      | address_2           |