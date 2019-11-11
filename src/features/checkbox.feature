Feature: Test the selected state of a checkbox
    As a developer
    I want to be able to test the selected state of a checkbox

    Background:
        Given I open the path "/"

    Scenario: The checkbox should not be selected by default
        Then  the checkbox "Elements - Checkbox" is not selected

    Scenario: The checkbox should be selected when clicked
        Given the checkbox "Elements - Checkbox" is not selected
        When  I click on the element "Elements - Checkbox"
        Then  the checkbox "Elements - Checkbox" is selected

    Scenario: The checkbox should deselect when clicked twice
        Given the checkbox "Elements - Checkbox" is not selected
        When  I click on the element "Elements - Checkbox"
        And   I click on the element "Elements - Checkbox"
        Then  the checkbox "Elements - Checkbox" is not selected
