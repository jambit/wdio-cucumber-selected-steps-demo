Feature: Test how clicks are handled on a certain element
    As a developer
    I want to be able to test how (double) clicks are handled by certain elements

    Background:
        Given I open the path "/"

    Scenario: Single click on a link should navigate to another page
        When  I click on the link "Elements - Navigate To example.com Link"
        Then  the url contains "https://example.com"

    @Isolate
    Scenario: Single click on the button Elements - Toggle Message should display an message
        When  I click on the button "Elements - Toggle Message"
        Then  the element "Elements - Message 1" is displayed
        And   the element "Elements - Message 2" is not displayed

    Scenario: Double click on the button Elements - Toggle Message should display another message
        When  I double-click on the button "Elements - Toggle Message"
        Then  the element "Elements - Message 1" is not displayed
        And   the element "Elements - Message 2" is displayed

    Scenario: Single click on the element Elements - Toggle Background should make the elemnt red
        When  I click on the element "Elements - Toggle Background"

    Scenario: Double click on the element Elements - Toggle Background should make the elemnt blue
        When  I double-click on the element "Elements - Toggle Background"
