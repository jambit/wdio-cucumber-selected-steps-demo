Feature: Test key press
    As a developer
    I want to be able to test if a certain action is performed when a certain
    key is pressed

    Background:
        Given I open the path "/"

    Scenario: Test if element responds to key press of "a"
        Given the element "Elements - Test Key Response" is empty
        When  I press "a"
        Then  the element "Elements - Test Key Response" contains the text "65"

    Scenario: Test if element responds to key press of "b"
        Given the element "Elements - Test Key Response" is empty
        When  I press "b"
        Then  the element "Elements - Test Key Response" does not contain the text "65"

    Scenario: Test if element responds to key press of "Escape"
        Given the element "Elements - Test Key Response" is empty
        When  I press "Escape"
        Then  the element "Elements - Test Key Response" contains the text "27"
