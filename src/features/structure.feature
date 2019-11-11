Feature: Test the page structure
    As a developer
    I want to be able to test if a page has a certain structure

    Background:
        Given I open the path "/"

    Scenario: Test if the page has a H1 I expect its at the top of the page
        Given  the element "Elements - Heading" exists
        When   I scroll to the element "Elements - Heading"
        Then   the element "Elements - Heading" is displayed

    Scenario: Test if the page has only one H1 element
        Given  the element "Elements - Second Heading" does not exist
