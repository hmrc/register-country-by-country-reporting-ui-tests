@tests
Feature: Check Answers Page
  Scenario: 1 - Changing from Business with id to withou id
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value and continue
    Then The Heading should be What type of business do you have?
    And I select value_0 and continue
    Then The Heading should be What is your Corporation Tax Unique Taxpayer Reference?
    And I enter 1234567890 in value
    And click Continue button
    Then The Heading should be What is the registered name of your business?
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
    # switch to business without id
    Then click your-business-details element
    When I select value-no and continue
    Then The Heading should be What is the name of your business?
    And I enter CBC Company in value
    And click Continue button
    Then The Heading should be Does your business trade under a different name?
    When I select value and continue
    Then The Heading should be What is the trading name of your business?
    And I enter Trading Name in value
    And click Continue button
    Then The Heading should be What is the main address of your business?
    When I fill What is the main address of your business page and continue
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
    And The Page should include XACBC000033333

  Scenario: 2 - Business without id to Business with id
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    When I select value-no and continue
    Then The Heading should be What is the name of your business?
    And I enter CBC Company in value
    And click Continue button
    Then The Heading should be Does your business trade under a different name?
    When I select value and continue
    Then The Heading should be What is the trading name of your business?
    And I enter Trading Name in value
    And click Continue button
    Then The Heading should be What is the main address of your business?
    When I fill What is the main address of your business page and continue
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
    Then click do-you-have-UTR element
    When I select value and continue
    Then The Heading should be What type of business do you have?
    And I select value_0 and continue
    Then The Heading should be What is your Corporation Tax Unique Taxpayer Reference?
    And I enter 1234567890 in value
    And click Continue button
    Then The Heading should be What is the registered name of your business?
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
