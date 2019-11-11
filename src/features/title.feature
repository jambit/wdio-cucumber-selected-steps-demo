Feature: Test the page title
    As a developer
    I want to be able to test if a page has a certain title

    Background:
        Given I open the path "/"

    Scenario: Test if the demo app has the title "DEMO APP"
        Given the title matches the text "DEMO APP"
        Then  the element "Elements - Heading" has the same text as the element "Elements - Subtitle"

    Scenario: Test if the demo app does not have the title "Google"
        Given the title does not match the text "Google"
        And   the url does not match "https://www.google.com/"
        Then  the element "Elements - Heading" does not contain the text "Google"
