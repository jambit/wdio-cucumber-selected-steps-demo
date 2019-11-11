Feature: Test the attributes of a given element
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the path "/"

    Scenario: The attribute "role" of a element should be "note"
        Then the attribute "role" of the element "Elements - Attribute Comparison" is "note"

    Scenario: The attribute "role" of a element should not be "main"
        Then the attribute "role" of the element "Elements - Attribute Comparison" is not "main"

    Scenario: The CSS attribute "color" of a element should be "red"
        Then the css attribute "color" of the element "Elements - CSS Attribute Comparison" is "rgba(255,0,0,1)"

    Scenario: The CSS attribute "color" of a element should not be "blue"
        Then the css attribute "color" of the element "Elements - CSS Attribute Comparison" is not "rgba(0,255,0,1)"

    Scenario: The (missing) CSS attribute "border" of a element should not be "0"
        Then the css attribute "border" of the element "Elements - CSS Attribute Comparison" is not "0"

    Scenario: The CSS attribute "font-weight" of a element should be "700"
        Then the css attribute "font-weight" of the element "Elements - CSS Attribute Comparison" is "700"
