Feature: Test if the url matches a certain value
    As a developer
    I want to be able to test if the url matches a certain value

    Scenario: The url should not be http://www.google.com/
        Given I open the path "/"
        Then  the url does not match "http://www.google.com/"

    Scenario: The url should be http://127.0.0.1:3000/
        Given I open the path "/"
        Then  the url matches "http://localhost:3000/"

    Scenario: The path should not be /index.html
        Given I open the path "/"
        Then  the path does not match "/index.html"

    Scenario: The path should be /index.html
        Given I open the path "/index.html"
        Then  the path matches "/index.html"

    Scenario: The url should not contain "google"
        Given I open the path "/"
        Then  the url does not contain "google"

    Scenario: The url should not contain "index"
        Given I open the path "/index.html"
        Then  the url contains "index"
