Feature: Test moveto the elements
    As a developer
    I want to be able to test if I can move to a element
    with an optional relative X and Y position

    Background:
        Given I open the path "/"
        And   I set the screen size to 1024 by 768px
        When  I scroll to the element "Elements - Move To"

    Scenario: Move to just the element
        When  I move to the element "Elements - Move To"
        Then  the element "Elements - Move To" has the class "moveToClass"

        When  I move to the element "Elements - Message 1"
        Then  the element "Elements - Move To" does not have the class "moveToClass"

    Scenario: Move to the element with a X and Y offset
        When  I move to the element "Elements - Move To" with an offset of 15,5
        Then  the element "Elements - Move To" has the class "moveToClass"

    @Pending
    Scenario: Move to the element with a too large offset
        When  I move to the element "Elements - Move To" with an offset of 5000,5000
        Then  the element "Elements - Move To" does not have the class "moveToClass"
