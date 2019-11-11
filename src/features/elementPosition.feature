Feature: Test the position of a given element
    As a developer
    I want to be able to test if a element has a certain position

    Background:
        Given I open the path "/"
        And   I set the screen size to 800 by 600px
        And   the height of the element "Elements - Square 100x100px" is 100px
        When  I scroll to the element "Elements - Square 100x100px"

    Scenario: The element Elements - Square 100x100px is at XX pixels on the X axis
        Then  the element "Elements - Square 100x100px" is positioned at 15px on the x axis

    Scenario: The element Elements - Square 100x100px is at XX pixels on the Y axis
        Then  the element "Elements - Square 100x100px" is positioned at 1084px on the y axis

    Scenario: The element Elements - Square 100x100px is not at YY pixels on the X axis
        Then  the element "Elements - Square 100x100px" is not positioned at 101px on the x axis

    Scenario: The element Elements - Square 100x100px is not at YY pixels on the y axis
        Then  the element "Elements - Square 100x100px" is not positioned at 99px on the y axis
