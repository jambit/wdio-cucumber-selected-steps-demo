Feature: Github test
    As a Developer in Test
    I want to test if the github.com failed login screen displays an error

    Scenario: login with fake credentials
        Given I open the url "https://github.com/login"
        And   I clear the inputfield "Github - Login"
        When  I append "marketionist" to the inputfield "Github - Login"
        And   I clear the inputfield "Github - Password"
        And   I append "1111" to the inputfield "Github - Password"
        And   I click on the button "Github - Sign In"
        Then  the element "Github - Flash Error" is displayed

    Scenario: Using a custom step
        Given I log in on github as "marketionist" with password "1111"
        Then  the element "Github - Flash Error" is displayed
