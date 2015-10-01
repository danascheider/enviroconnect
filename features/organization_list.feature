Feature: Organization list
  Background:
    Given there are 3 organizations

  Scenario: Display list
    When I visit '/organizations'
    Then I should see 3 organizations listed