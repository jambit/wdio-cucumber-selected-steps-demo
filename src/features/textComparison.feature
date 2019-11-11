Feature: Test text contents of elements
    As a developer
    I want to be able to test the text inside a element against the text inside
    another element

    Background:
        Given I open the path "/"

    Scenario: Elements containing different text
        Then  the element "Text Comparison - Text 1" does not have the same text as the element "Text Comparison - Text 2"

    Scenario: Elements containing the same text
        Then  the element "Text Comparison - Text 1" has the same text as the element "Text Comparison - Text 3"

    Scenario: Elements containing no text
        Then  the element "Text Comparison - Text 4" has the same text as the element "Text Comparison - Text 5"

    Scenario: Elements containing text and elements
        Then  the element "Text Comparison - Text 1" has the same text as the element "Text Comparison - Text 6"

    Scenario: Elements containing text inside a child element
        Then  the element "Text Comparison - Text 1" has the same text as the element "Text Comparison - Text 7"

    Scenario: Elements containing text with encoded strings
        Then  the element "Text Comparison - Text 8" has the same text as the element "Text Comparison - Text 9"

    Scenario: Element containing different text
        Then the element "Text Comparison - Text Without Cucumber" does not contain the text "This element contains cucumber"

    Scenario: Element containing the same text
        Then the element "Text Comparison - Text With Cucumber" contains the text "This element contains cucumber"

    Scenario: Input containing different text
        Then the element "Text Comparison - Value Without Cucumber" does not contain the text "This input contains cucumber"

    Scenario: Input containing the same text
        Then the element "Text Comparison - Value With Cucumber" contains the text "This input contains cucumber"

    # Button checks
    Scenario: Button contains text
        Then the button "Text Comparison - Button Wait For Checked" contains the text "Check"

    Scenario: Button does not contain the text
        Then the button "Text Comparison - Button Wait For Checked" does not contain the text "Not checked"

     Scenario: Element containing different text
        Then the element "Text Comparison - Button Wait For Checked" does not contain the text "This element contains cucumber"

    Scenario: Button is not empty
        Then the button "Text Comparison - Button Wait For Checked" is not empty

    Scenario: Button is not empty
        Then the button "Text Comparison - Button Wait For Checked" is not empty
