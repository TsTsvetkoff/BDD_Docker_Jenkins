# Created by TsTsvetkoff at 30.10.24
Feature: Addition
  Scenario: Add two numbers
    Given I have numbers 1 and 2
    When I add them
    Then the result should be 3

  Scenario: Add two negative numbers
    Given I have numbers -1 and -2
    When I add them
    Then the result should be -3

  Scenario: Add a positive and a negative number
    Given I have numbers 1 and -2
    When I add them
    Then the result should be -1
