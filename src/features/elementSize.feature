Feature: Test the width and height of a given element
    As a developer
    I want to be able to test if a element has a certain width and/or height

    Background:
        Given I open the path "/"

    Scenario: The element Elements - Square 100x100px whould have a width of 100px
        Then  the width of the element "Elements - Square 100x100px" is 100px

    Scenario: The element Elements - Square 100x100px whould have a height of 100px
        Then  the height of the element "Elements - Square 100x100px" is 100px

    Scenario: The element Elements - Square 100x100px whould not have a width of 101px
        Then  the width of the element "Elements - Square 100x100px" is not 101px

    Scenario: The element Elements - Square 100x100px whould not have a height of 99px
        Then  the height of the element "Elements - Square 100x100px" is not 99px
