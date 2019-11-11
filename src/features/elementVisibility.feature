Feature: Test visibility of elements
    As a developer
    I want to be able to test the visibillity of a element

    Background:
        Given I open the url "http://localhost:3000/"
        And   I pause for 1000ms

    Scenario: Invisible elements to be invisible
        Then  the element "Elements - Hidden" is not displayed

    Scenario: Displayed elements to be displayed
        Then  the element "Elements - Displayed" is displayed

    Scenario: Element should become displayed
        Given the element "Elements - Make Displayed" is not displayed
        When  I click on the element "Elements - Button Make Displayed"
        And   I pause for 2000ms
        Then  the element "Elements - Make Displayed" is displayed

    Scenario: Element should become invisible
        Given the element "Elements - Make Invisible" is displayed
        When  I click on the element "Elements - Button Make Invisible"
        And   I pause for 2000ms
        Then  the element "Elements - Make Invisible" is not displayed

    Scenario: Element in the viewport
        Then  the element "Elements - Heading" is within the viewport

    Scenario: Element outside the viewport
        When  I scroll to the element "Elements - Footer"
        Then  the element "Elements - Heading" is not within the viewport
