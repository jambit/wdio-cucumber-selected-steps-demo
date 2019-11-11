Feature: Test modals
    As a developer
    I want to be able to test the opening, closing and content of modal windows

    Background:
        Given I open the path "/"

    Scenario: Test if alert appears & gets accepted
        Given an alertbox does not appear
        When  I click on the element "Modals - Open Alert"
        Then  an alertbox appears
        And   an alertbox matches the text "I am an alert box!"
        When  I accept the alertbox
        Then  an alertbox does not appear

    Scenario: Test if alert appears & gets dismissed
        Given an alertbox does not appear
        When  I click on the element "Modals - Open Alert"
        Then  an alertbox appears
        When  I dismiss the alertbox
        Then  an alertbox does not appear

    Scenario: Test if confirm is canceled
        Given a confirmbox does not appear
        And   the element "Modals - Confirm Result" is empty
        When  I click on the element "Modals - Open Confirm"
        Then  a confirmbox appears
        And   an alertbox matches the text "I am a confirm box!"
        When  I dismiss the confirmbox
        Then  a confirmbox does not appear
        And   the element "Modals - Confirm Result" contains the text "false"

    Scenario: Test if confirm is accepted
        Given a confirmbox does not appear
        And   the element "Modals - Confirm Result" is empty
        When  I click on the element "Modals - Open Confirm"
        Then  a confirmbox appears
        When  I accept the confirmbox
        Then  a confirmbox does not appear
        And   the element "Modals - Confirm Result" contains the text "true"

    Scenario: Test if prompt appears & dismissed
        Given a prompt does not appear
        And   the element "Modals - Prompt Result" is empty
        When  I click on the element "Modals - Open Prompt"
        Then  a prompt appears
        And   an alertbox matches the text "I am a prompt!"
        When  I dismiss the prompt
        Then  a prompt does not appear
        And   the element "Modals - Prompt Result" contains the text "null"

    Scenario: Test if prompt is accepted
        Given a prompt does not appear
        And   the element "Modals - Prompt Result" is empty
        When  I click on the element "Modals - Open Prompt"
        Then  a prompt appears
        When  I accept the prompt
        Then  a prompt does not appear
        And   the element "Modals - Prompt Result" is empty

    Scenario: Test if prompt has text entered
        Given a prompt does not appear
        And   the element "Modals - Prompt Result" is empty
        When  I click on the element "Modals - Open Prompt"
        Then  a prompt appears
        When  I enter "test 1 2 3" into the prompt
        And   I accept the prompt
        Then  a prompt does not appear
        And   the element "Modals - Prompt Result" contains the text "test 1 2 3"
