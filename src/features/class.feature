# the element "$string" (has|does not have) the class "$string"

Feature: Test if a given element has a certain CSS class
    As a developer
    I want to be able to test if a element has a certain CSS class

    Background:
        Given I open the path "/"

    Scenario: Element Elements - Classtest should have the class "class1"
        Then  the element "Elements - Classtest" has the class "class1"

    Scenario: Element Elements - Classtest should also have the class "class2"
        Then  the element "Elements - Classtest" has the class "class2"

    Scenario: Element Elements - Classtest should not have the class "class3"
        Then  the element "Elements - Classtest" does not have the class "class3"
