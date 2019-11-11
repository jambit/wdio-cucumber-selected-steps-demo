Feature: Test select elements
    As a developer
    I want to be able to test if a certain value is selected for the a certain
    select element

    Background:
        Given I open the path "/"

    Scenario: Test if we can select the second option of a select element
        Then the element "Select - Option #2" is not selected
        When I select the 1st option for the element "Select - Select"
        Then the element "Select - Option #2" is selected

    Scenario: Test if we can select the third option of a select element
        Then the element "Select - Option #3" is not selected
        When I select the 2nd option for the element "Select - Select"
        Then the element "Select - Option #3" is selected

    Scenario: Test if we can select the fourth option of a select element
        Then the element "Select - Option #4" is not selected
        When I select the 3th option for the element "Select - Select"
        Then the element "Select - Option #4" is selected

    Scenario: Test if we can select the first option of a select element
        When I select the 1st option for the element "Select - Select"
        Then the element "Select - Option #1" is not selected
        When I select the 0th option for the element "Select - Select"
        Then the element "Select - Option #1" is selected

    Scenario: Test if we can select a option by its name
        Then the element "Select - Option #2" is not selected
        When I select the option with the name "secondOption" for the element "Select - Select"
        Then the element "Select - Option #2" is selected

    Scenario: Test if we can select a option by its value
        Then the element "Select - Option #3" is not selected
        When I select the option with the value "third" for the element "Select - Select"
        Then the element "Select - Option #3" is selected

    Scenario: Test if we can select a option by its displayed text
        Then the element "Select - Option #4" is not selected
        When I select the option with the text "Option #4" for the element "Select - Select"
        Then the element "Select - Option #4" is selected

    Scenario: Test if we can select a option by its value using XPath selectors only
        Then the element "Select - Option #2" is not selected
        When I select the option with the value "second" for the element "Select - Select Alias"
        Then the element "Select - Option #2" is selected

    Scenario: Test if we can select a option by its index using XPath selectors
        Then the element "Select - Option #4" is not selected
        When I select the 3rd option for the element "Select - Select Alias"
        Then the element "Select - Option #4" is selected

    Scenario: Test if we can select a option by its displayed text using XPath selectors
        Then the element "Select - Option #3" is not selected
        When I select the option with the text "Option #3" for the element "Select - Select Alias"
        Then the element "Select - Option #3" is selected

    Scenario: Test if we can select a option by its name using XPath selectors
        Then the element "Select - Option #2" is not selected
        When I select the option with the name "secondOption" for the element "Select - Select Alias"
        Then the element "Select - Option #2" is selected

