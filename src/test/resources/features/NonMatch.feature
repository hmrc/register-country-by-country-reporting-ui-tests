@tests @ZAP
Feature: Non-match user journeys for UTR and NINO

  Scenario Outline: 1 - UTR non-match
    Given Organisation User logs in to register for CBC
    Then I navigate to start page
    # remove navigation above ^ when automatic redirect in place
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value and continue
    Then The Heading should be What type of business do you have?
    And I select <business type> and continue
    Then The Heading should be <page>
    And I enter 1234567890 in value
    And click Continue button
    Then The Heading should be <business name>
    And I enter NonMatch Company in value
    And click Continue button
#    Then The Heading should be The details you entered did not match our records
#    When click Try Again
#    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?

    Examples:
      | business type | page                                                    | business name                                 |
      | value_0       | What is your Corporation Tax Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_1       | What is your Self Assessment Unique Taxpayer Reference? | What is the partnership name?                 |
      | value_2       | What is your Self Assessment Unique Taxpayer Reference? | What is the registered name of your business? |
      | value_3       | What is your Corporation Tax Unique Taxpayer Reference? | What is the name of your organisation?        |