Feature: Test draggable elements
    As a developer
    I want to be able to test a given draggable element

    Background:
        Given I open the path "/"
        And I set the screen size to 1024 by 768px
        When  I scroll to the element "Elements - Draggable"
        Then  the element "Elements - Draggable" is positioned at 15px on the x axis
        And   the element "Elements - Draggable" is positioned at 130px on the y axis
        And   the element "Elements - Droppable" is positioned at 130px on the y axis

    Scenario: Drag to dropzone
        When  I drag the element "Elements - Draggable" to the element "Elements - Droppable"
        Then  the element "Elements - Droppable" contains the text "Dropped!"
        And   the element "Elements - Draggable" is not positioned at 15px on the x axis
        And   the element "Elements - Draggable" is positioned at 180px on the y axis
