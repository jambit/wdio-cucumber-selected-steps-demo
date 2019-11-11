Feature: Test waiting for actions
    As a developer
    I want to be able to test if delayed actions are being performed

    Background:
        Given I open the url "http://localhost:3000/"
        And   I pause for 1000ms

    Scenario: Test if element becomes selected after 2000 ms
        Given the checkbox "Wait For - Checked - Element" is not selected
        When  I click on the button "Wait For - Checked - Button"
        Then  I wait 2000ms for the element "Wait For - Checked - Element" to be selected

    Scenario: Test if element becomes selected
        Given the checkbox "Wait For - Checked - Element" is not selected
        When  I click on the button "Wait For - Checked - Button"
        Then  I wait 1000ms for the element "Wait For - Checked - Element" to be selected

    Scenario: Test if element becomes enabled
        Given the element "Wait For - Enabled - Element" is not enabled
        When  I click on the button "Wait For - Enabled - Button"
        Then  I wait 1000ms for the element "Wait For - Enabled - Element" to be enabled

    Scenario: Test if element becomes selected
        Given the element "Wait For - Selected - Element" is not selected
        When  I click on the button "Wait For - Selected - Button"
        Then  I wait 1000ms for the element "Wait For - Selected - Element" to be selected

    Scenario: Test if element becomes displayed
        Given the element "Wait For - Displayed - Element" is not displayed
        When  I click on the button "Wait For - Displayed - Button"
        Then  I wait 1000ms for the element "Wait For - Displayed - Element" to be displayed

    Scenario: Test if element to contain a text
        Given the element "Wait For - Contains Text - Element" is empty
        When  I click on the button "Wait For - Contains Text - Button"
        Then  I wait 1000ms for the element "Wait For - Contains Text - Element" to have a text

    Scenario: Test if element to contain a value
        Given the element "Wait For - Contains Value - Element" is empty
        When  I click on the button "Wait For - Contains Value - Button"
        Then  I wait 1000ms for the element "Wait For - Contains Value - Element" to have a value

    Scenario: Test if element to exist
        Given the element "Wait For - Create - Element" does not exist
        When  I click on the button "Wait For - Create - Button"
        Then  I wait 1000ms for the element "Wait For - Create - Element"

    Scenario: Test if element exist (explicit)
        Given the element "Wait For - Create - Element" does not exist
        When  I click on the button "Wait For - Create - Button"
        Then  I wait 1000ms for the element "Wait For - Create - Element" to exist

    Scenario: Test if element becomes unchecked
        When  I click on the button "Wait For - Checked - Button"
        And   I pause for 1000ms
        Then  the checkbox "Wait For - Checked - Element" is selected
        When  I click on the button "Wait For - Checked - Button"
        Then  I wait 1000ms for the element "Wait For - Checked - Element" to not be selected

    Scenario: Test if element becomes disabled
        When  I click on the button "Wait For - Enabled - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Enabled - Element" is enabled
        When  I click on the button "Wait For - Enabled - Button"
        Then  I wait 1000ms for the element "Wait For - Enabled - Element" to not be enabled

    Scenario: Test if element becomes not selected
        When  I click on the button "Wait For - Selected - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Selected - Element" is selected
        When  I click on the button "Wait For - Selected - Button"
        Then  I wait 1000ms for the element "Wait For - Selected - Element" to not be selected

    Scenario: Test if element becomes not displayed
        When  I click on the button "Wait For - Displayed - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Displayed - Element" is displayed
        When  I click on the button "Wait For - Displayed - Button"
        Then  I wait 1000ms for the element "Wait For - Displayed - Element" to not be displayed

    Scenario: Test if element to not contain a text
        When  I click on the button "Wait For - Contains Text - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Contains Text - Element" is not empty
        When  I click on the button "Wait For - Contains Text - Button"
        Then  I wait 1000ms for the element "Wait For - Contains Text - Element" to not have a text

    Scenario: Test if element to not contain a value
        When  I click on the button "Wait For - Contains Value - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Contains Value - Element" is not empty
        When  I click on the button "Wait For - Contains Value - Button"
        Then  I wait 2000ms for the element "Wait For - Contains Value - Element" to not have a value

    Scenario: Test if element not exists
        When  I click on the button "Wait For - Create - Button"
        And   I pause for 1000ms
        Then  the element "Wait For - Create - Element" exists
        When  I click on the button "Wait For - Create - Button"
        Then  I wait 1000ms for the element "Wait For - Create - Element" to not exist
