Feature: Local server test
    As a developer
    I want the demo app have the correct title

    Background:
        Given I open the path "/"

    Scenario: Is not Google
        Then the title does not match the text "Google"

    Scenario: Is correct
        Then the title matches the text "DEMO APP"
