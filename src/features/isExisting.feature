Feature: Github test
    As a Developer in Test
    I want to search for webdriverio repository
    and check if some elements are existing and others are not

    Scenario: open URL
        Given I open the url "https://github.com/webdriverio/cucumber-boilerplate"
        Then  the element "Github - Logo" exists
        And the element "Github - Some other element" does not exist
