Feature: Test input fields on a page
    As a developer
    I want to be able to test input fields on a certain page

    Background:
        Given I open the path "/"
        Then  the element "Elements - Test Input" is empty

    Scenario: Set the content of a input field
        When  I set the inputfield "Elements - Test Input" to "test"
        Then  the element "Elements - Test Input" is not empty
        And   the element "Elements - Test Input" contains the text "test"

    Scenario: Add content to a input field
        When  I set the inputfield "Elements - Test Input" to "test"
        Then  the element "Elements - Test Input" is not empty
        When  I append " more tests" to the inputfield "Elements - Test Input"
        Then  the element "Elements - Test Input" contains the text "test more tests"

    Scenario: Clear the content of a input field
        When  I set the inputfield "Elements - Test Input" to "test"
        Then  the element "Elements - Test Input" is not empty
        And   the element "Elements - Test Input" contains the text "test"
        When  I clear the inputfield "Elements - Test Input"
        Then  the element "Elements - Test Input" is empty
