Feature: Organization profile

  Scenario Outline:
    Given an organization
    When I visit the organization's profile
    Then I should see its <attribute>

      Examples:
        | attribute |
        | name      |
        | mission   |
        | type      |
        | phone     |
        | address_1 | 
        | address_2 | 
        | fax       |
        | city      |
        | state     |
        | zip       |