
Feature: Internal errors

  # to be added / updated

  Scenario Outline: 1 - Business with utr
    Given MDR User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value and continue
    Then The Heading should be What type of business do you have?
    And I select value and continue
    Then The Heading should be What is your Corporation Tax Unique Taxpayer Reference?
    And I enter <utr> in value
    And click Continue button
    Then The Heading should be What is the registered name of your business?
    And I enter MDR Company in value
    And click Continue button
    Then The Heading should be Sorry, there is a problem with the service

    Examples:
      | utr           |
      | 9999999990    |
      | 9999999991    |
      | 9999999992    |
      | 9999999993    |

  Scenario Outline: 3 - Business without ID
    Given MDR User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value-no and continue
    Then The Heading should be What is the name of your business?
    And I enter <name> in businessName
    And click Continue button
    Then The Heading should be Does your business trade under a different name?
    When I select value-no and continue
    Then The Heading should be What is the main address of your business?
    When I fill What is the main address of your business page and continue
    Then The Heading should be Who can we contact if we have questions about your reports?
    And I enter Joe Exotic in value
    And click Continue button
    Then The Heading should be What is the email address for Joe Exotic?
    And I enter joe.exotic@tigerking.com in value
    And click Continue button
    Then The Heading should be Can we contact Joe Exotic by telephone?
    When I select value-no and continue
    Then The Heading should be Is there someone else we can contact if Joe Exotic is not available?
    When I select value-no and continue
    Then The Heading should be Check your answers before you register to report for MDR
    And click Confirm and send
    Then The Heading should be Sorry, there is a problem with the service

    Examples:
      | name         |
      | error        |
      | invalid      |
      | server       |
      | notProcessed |
      | notFound     |