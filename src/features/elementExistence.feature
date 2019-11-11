Feature: Test existence of elements
    As a developer
    I want to be able to test the existence of a element

    Background:
        Given I open the path "/"

    Scenario: None existing element check
        Then  the element "Elements - Non Existing" does not exist

    Scenario: Existing element check
        Then  the element "Elements - Existing" exists
