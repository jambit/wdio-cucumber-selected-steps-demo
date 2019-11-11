Feature: Viewport test
    As a Developer in Test
    I want to visit the Google result page for the term "test"
    and make sure I have the logo within the viewport and make sure the footer is not

    Scenario: Header in viewport, footer outside viewport
        Given I open the url "/"
        And   I set the screen size to 1024 by 768px
        And   I pause for 1000ms
        Then  the element "Elements - Heading" is within the viewport
        And   the element "Elements - Footer Alias" is not within the viewport
