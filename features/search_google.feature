
Feature: Google 

Scenario: google chrome search correction
    Given i am on the google page in the search option
    When i am looking for the word "pruebaz"
    And the right word is presented "pruebas"
    Then i select it and I validate that more than 6 results are presented

Scenario: google chrome search contains the text 
    Given i am on the google page in the search option
    When i am looking for the word "pruebaz"
    And the right word is presented "pruebas"
    Then i select it and I validate that the results contain the word "prueba"