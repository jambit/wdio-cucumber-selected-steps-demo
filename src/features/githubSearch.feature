Feature: Github test
    As a Developer in Test
    I want to search for webdriverio repository
    so that I can use it in my future tests

Scenario: open URL
    Given I open the url "https://github.com/"
    Then  the url contains "github.com"
    And   the title matches the text "The world’s leading software development platform · GitHub"

Scenario: search for webdriverio repository
    Given I open the url "https://github.com/search"
    And   the element "Github - Search Input" is empty
    And   I clear the inputfield "Github - Search Input"
    And   I append "webdriverio" to the inputfield "Github - Search Input"
    And   I press "Space"
    And   I append "automation" to the inputfield "Github - Search Input"
    When  I press "Enter"
    And   I wait for the element "Github - Header Search Input" to exist
    Then  the element "Github - Header Search Input" contains the text "webdriverio automation"
    And   the element "Github - Repo List - First Child" contains the text "Next-gen WebDriver test automation framework for Node.js"
