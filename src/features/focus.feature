Feature: Test the focus state of a given element
    As a developer
    I want to be able to test if a element has a certain focus state

    Background:
        Given I open the path "/"

    Scenario: The element Elements - Text Input should not have the focus by default
        Then  the element "Elements - Text Input" is not focused

    Scenario: The element Elements - Text Input should have the focus when selected
        When  I click on the element "Elements - Text Input"
        Then  the element "Elements - Text Input" is focused
