@tests @ZAP
Feature: Already registered user go to "Your organisation is already registered" page

  Scenario: 1 - Business with utr
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)
    When I select value and continue
    Then The Heading should be What type of business do you have?
    And I select value_0 and continue
    And I enter 2222222222 in value
    And click Continue button
    Then The Heading should be What is the registered name of your business?
    And I enter CBC Company in value
    And click Continue button
    Then The Heading should be Your organisation is already registered

  Scenario:2 Business registration without id
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value-no and continue
    Then The Heading should be What is the name of your business?
    And I enter duplicate in value
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
    Then The Heading should be Check your answers before you register
    And click Confirm and send
    Then The Heading should be Your organisation is already registered