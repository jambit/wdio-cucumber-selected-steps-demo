Feature: Showcase selector variables
    As a developer
    I want to be able to pass variables to the selector files from the wdio.conf.js

    Background:
        Given I open the path "/"
        Then  the element "Elements - Test Input" is empty

    Scenario: Create two users
        When  I create a user "User A"
        And   I create a user "User B"
        Then  I see the user "User A" in "User Table - User A"
        And   I see the user "User B" in "User Table - User B"
