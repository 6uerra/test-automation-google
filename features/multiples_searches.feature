
# When comparing a regular Scenario Definition with Scenario Outline, values no longer need to be hard-coded in step definitions. 
# Values are replaced with parameters as <parameter_name> in step-definition itself.
# At the end of Scenario Outline, values are defined in a pipe-delimited table format using Examples.

Feature: Google multiple searches

Scenario Outline: validate the search and correction of <word> <word_correct>
    Given i am on the google page in the search option
    When i am looking for the word "<word>"
    And the right word is presented "<word_correct>"
    Then i select it and I validate that more than 6 results are presented
 Examples: 
      | word      | word_correct |
      | pruebaz   | pruebas      |
      | textin    | texting      |
      | qualiti   | quality      |
      | ISTBQ     | ISTQB        |
