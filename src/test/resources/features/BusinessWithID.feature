@tests @ZAP
Feature: Business Registration with UTR

  Background: Registering with UTR
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value and continue
    Then The Heading should be What type of business do you have?

  Scenario Outline: 1 - Business registration with utr
    And I select <business type> and continue
    Then The Heading should be <page>
    And I enter 1234567890 in value
    And click Continue button
    Then The Heading should be <business name>
    And I enter CBC Company in value
    And click Continue button
    Then The Heading should be Is this your business?
    When I select value and continue
    Then The Heading should be Who can we contact if we have questions about your reports?
    And I enter Joe Exotic in value
    And click Continue button
    Then The Heading should be What is the email address for Joe Exotic?
    And I enter joe.exotic@tigerking.com in value
    And click Continue button
    Then The Heading should be Can we contact Joe Exotic by telephone?
    When I select value and continue
    Then The Heading should be What is the telephone number for Joe Exotic?
    And I enter 0044 7960898952 in value
    And click Continue button
    Then The Heading should be Is there someone else we can contact if Joe Exotic is not available?
    When I select value and continue
    Then The Heading should be What is the name of the individual or team we should contact?
    And I enter DAC team in value
    And click Continue button
    Then The Heading should be What is the email address for DAC team?
    And I enter dac6@tigerking.com in value
    And click Continue button
    Then The Heading should be Can we contact DAC team by telephone?
    And I select value and continue
    Then The Heading should be What is the telephone number for DAC team?
    And I enter 0044 7960898952 in value
    And click Continue button
    Then The Heading should be Check your answers before you register
    And click Confirm and send
    Then The Heading should be Registration successful
    And The Page should include XACBC0000111111

    Examples:
      | business type | page                                                    | business name                                 |
      | value_0       | What is your Corporation Tax Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_1       | What is your Self Assessment Unique Taxpayer Reference? | What is the partnership name?                 |
      | value_2       | What is your Self Assessment Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_3       | What is your Corporation Tax Unique Taxpayer Reference? | What is the name of your organisation?        |

  Scenario Outline: 2 - Identity not confirmed page
    And I select <business type> and continue
    Then The Heading should be <page>
    And I enter 1234567890 in value
    And click Continue button
    Then The Heading should be <business name>
    And I enter CBC Company in value
    And click Continue button
    Then The Heading should be Is this your business?
    When I select value-no and continue
   Then The Heading should be The details you entered did not match our records
    When click Try Again
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?

    Examples:
      | business type | page                                                    | business name                                 |
      | value_0       | What is your Corporation Tax Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_1       | What is your Self Assessment Unique Taxpayer Reference? | What is the partnership name?                 |
      | value_2       | What is your Self Assessment Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_3       | What is your Corporation Tax Unique Taxpayer Reference? | What is the name of your organisation?        |

