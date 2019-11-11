Feature: Test text contents of elements
    As a developer
    I want to be able to test child selectors separated by " -> "

    Background:
        Given I open the path "/"

    Scenario: Project A
        Then the element "Child Selectors - Table -> Child Selectors - Project A -> Child Selectors - User 1 -> Child Selectors - Name Column" matches the text "Test User1"
        And the element "Child Selectors - Table -> Child Selectors - Project A -> Child Selectors - User 1 -> Child Selectors - Role Column" matches the text "Guest"
        And the element "Child Selectors - Table -> Child Selectors - Project A -> Child Selectors - User 2 -> Child Selectors - Name Column" matches the text "Test User2"
        And the element "Child Selectors - Table -> Child Selectors - Project A -> Child Selectors - User 2 -> Child Selectors - Role Column" matches the text "Visitor"

    Scenario: Project B
        Then the element "Child Selectors - Table -> Child Selectors - Project B -> Child Selectors - User 1 -> Child Selectors - Name Column" matches the text "Test User1!"
        And the element "Child Selectors - Table -> Child Selectors - Project B -> Child Selectors - User 1 -> Child Selectors - Role Column" matches the text "Admin"
        And the element "Child Selectors - Table -> Child Selectors - Project B -> Child Selectors - User 2 -> Child Selectors - Name Column" matches the text "Test User2!"
        And the element "Child Selectors - Table -> Child Selectors - Project B -> Child Selectors - User 2 -> Child Selectors - Role Column" matches the text "Moderator"

    Scenario: Exists
        Then the element "Child Selectors - Table -> Child Selectors - Project A -> Child Selectors - User 1 -> Child Selectors - Name Column" exists exactly 1 times
        Then the element "Child Selectors - Table -> Child Selectors - Project B -> Child Selectors - User 1 -> Child Selectors - Name Column" exists exactly 1 times
        Then the element "Child Selectors - Table -> Child Selectors - User 1 -> Child Selectors - Name Column" exists exactly 2 times
        Then the element "Child Selectors - Table -> Child Selectors - Name Column" exists exactly 4 times
