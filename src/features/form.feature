Feature: Test form submission
    As a developer
    I want to be able to test form submission

    Background:
        Given I open the path "/"

    Scenario: Test if a message is shown when the form is submitted
        Given the element "Elements - Form Submit Message" is not displayed
        When  I click on the button "Elements - Form Submit"
        Then  the element "Elements - Form Submit Message" is displayed
