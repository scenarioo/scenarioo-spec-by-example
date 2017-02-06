@Heinrich @Joanna
@Future
Feature: View details for sauce

  Scenario: View details for sauce
    Given All sauces are in the system
    When  I navigate to the main page
    And I select the first sauce
    Then I see the following details for the sauce:
      | Property    | Value                                   |
      | Name        | Sudden Death Sauce                      |
      | Description | As my Chilipals know, I am never one... |
      | Picture     | pic1.jpg                                |
      | Price       | $10.99                                  |