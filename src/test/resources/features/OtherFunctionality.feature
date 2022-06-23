@tests @ZAP
Feature: Other Functionality

  Scenario:1 User clicks sign out
    Given Organisation User logs in to register for CBC
    Then The Heading should be Do you have a UK Unique Taxpayer Reference (UTR)?
    And I click Sign out
    Then The Heading should be Give feedback
