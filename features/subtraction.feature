# Created by TsTsvetkoff at 30.10.24
Feature: Subtraction
  Scenario: Subtract two numbers
    Given I have numbers 5 and 3
    When I subtract them
    Then the result should be 2

  Scenario: Subtract two negative numbers
    Given I have numbers -5 and -3
    When I subtract them
    Then the result should be -2
