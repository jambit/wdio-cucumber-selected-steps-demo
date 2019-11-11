Feature: Test the existens and content of cookies
    As a developer
    I want to be able to test the existence and/or the content of cookies

    Background:
        Given I open the path "/"
        And   I pause for 500ms

    Scenario: The cookie "test" should exist
        Then  the cookie "test" exists

    Scenario: The cookie "test2" should not exist
        Given the cookie "test" has the value "yumyum"
        Then  the cookie "test2" does not exist

    Scenario: The cookie "test" should contain the value "yumyum"
        Given the cookie "test" does not have the value "out of date"
        Then  the cookie "test" has the value "yumyum"

    Scenario: The cookie "test" should not contain the value "out of date"
        Then  the cookie "test" does not have the value "out of date"

    Scenario: The cookie "test3" should be created
        When  I set the cookie "test3" to "more cookies"
        Then  the cookie "test3" exists
        And   the cookie "test3" has the value "more cookies"

    Scenario: The cookie "test3" should be deletable
        Then  the cookie "test3" exists
        When  I delete the cookie "test3"
        Then  the cookie "test3" does not exist
