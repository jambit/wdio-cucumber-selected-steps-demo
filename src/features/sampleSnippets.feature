Feature: Sample Snippets test
    As a developer
    I should be able to use given text snippets

    #@Isolate
    Scenario: open URL
        Given the url does not match "http://webdriverjs.christian-bromann.com/"
        And   I open the url "http://webdriverjs.christian-bromann.com/"
        Then  the url matches "http://webdriverjs.christian-bromann.com/"
        And   the url does not match "http://google.com"

    Scenario: open sub page of weburl
        Given the url does not match "http://webdriverjs.christian-bromann.com/two.html"
        And   I open the url "http://webdriverjs.christian-bromann.com/"
        Then  the url matches "http://webdriverjs.christian-bromann.com/"
        And   the url does not match "http://google.com"

    Scenario: click on link
        Given the title does not match the text "two"
        And   I open the url "http://webdriverjs.christian-bromann.com/"
        When  I click on the link "Sample Snippets - Link Two"
        Then  the title matches the text "two"

    Scenario: click on button
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Button 1 Clicked" is not displayed
        When  I click on the button "Sample Snippets - Button 1"
        Then  the element "Sample Snippets - Button 1 Clicked" is displayed

    Scenario: double click on a button
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Button 1 Double-Clicked" is not displayed
        When  I double-click on the element "Sample Snippets - Button 1"
        Then  the element "Sample Snippets - Button 1 Double-Clicked" is displayed

    Scenario: click on element
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Button 1 Clicked" is not displayed
        When  I click on the element "Sample Snippets - Button 1"
        Then  the element "Sample Snippets - Button 1 Clicked" is displayed

    Scenario: add value to an input element
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Input" does not contain the text "abc"
        When  I append "bc" to the inputfield "Sample Snippets - Input"
        Then  the element "Sample Snippets - Input" contains the text "abc"

    Scenario: set value to an input element
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Input" does not contain the text "bc"
        When  I set the inputfield "Sample Snippets - Input" to "bc"
        Then  the element "Sample Snippets - Input" contains the text "bc"

    Scenario: clear value of input element
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        When  I set the inputfield "Sample Snippets - Input" to "test"
        And   I clear the inputfield "Sample Snippets - Input"
        Then  the element "Sample Snippets - Input" is empty

    Scenario: drag n drop
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Search Input" does not contain the text "Dropped!"
        When  I drag the element "Sample Snippets - Overlay" to the element "Sample Snippets - Red"
        Then  the element "Sample Snippets - Search Input" contains the text "Dropped!"

    Scenario: submit form
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Got Data - A" does not exist
        When  I click on the button "Sample Snippets - Send"
        Then  the element "Sample Snippets - Got Data - A" is displayed

    Scenario: wait for element
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Late Element" does not exist
        Then  I wait 5000ms for the element "Sample Snippets - Late Element" to be displayed

    Scenario: wait for element using default wait time
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Late Element" does not exist
        Then  I wait for the element "Sample Snippets - Late Element" to be displayed

    Scenario: pause
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Late Element" does not exist
        When  I pause for 3000ms
        Then  the element "Sample Snippets - Late Element" is displayed

    Scenario: query title
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the title matches the text "WebdriverJS Testpage"
        And   the title does not match the text "Other title"
        Then  the title matches the text "WebdriverJS Testpage"
        And   the title does not match the text "Other title"

    Scenario: check visibility
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Button 1" is displayed
        And   the element "Sample Snippets - Button 1 Clicked" is not displayed
        Then  the element "Sample Snippets - Button 1" is displayed
        And   the element "Sample Snippets - Button 1 Clicked" is not displayed

    Scenario: compare texts
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Second Page Link" has the same text as the element "Sample Snippets - Second Page Link"
        And   the element "Sample Snippets - Second Page Link" does not have the same text as the element "Sample Snippets - Github Repo"
        Then  the element "Sample Snippets - Second Page Link" has the same text as the element "Sample Snippets - Second Page Link"
        And   the element "Sample Snippets - Second Page Link" does not have the same text as the element "Sample Snippets - Github Repo"

    Scenario: check text content
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Second Page Link" contains the text "two"
        And   the element "Sample Snippets - Second Page Link" does not contain the text "andere linktext"
        Then  the element "Sample Snippets - Second Page Link" contains the text "two"
        And   the element "Sample Snippets - Second Page Link" does not contain the text "anderer linktext"

    Scenario: check input content
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Input" contains the text "a"
        And   the element "Sample Snippets - Input" does not contain the text "aa"
        Then  the element "Sample Snippets - Input" contains the text "a"
        And   the element "Sample Snippets - Input" does not contain the text "aa"

    Scenario: check attribut
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the attribute "data-foundby" of the element "Sample Snippets - New Window" is "partial link text"
        And   the attribute "data-foundby" of the element "Sample Snippets - New Window" is not "something else"
        Then  the attribute "data-foundby" of the element "Sample Snippets - New Window" is "partial link text"
        And   the attribute "data-foundby" of the element "Sample Snippets - New Window" is not "something else"

    Scenario: check css attribut
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the css attribute "background-color" of the element "Sample Snippets - Red" is "rgba(255,0,0,1)"
        And   the css attribute "background-color" of the element "Sample Snippets - Red" is not "rgba(0,255,0,1)"
        Then  the css attribute "background-color" of the element "Sample Snippets - Red" is "rgba(255,0,0,1)"
        And   the css attribute "background-color" of the element "Sample Snippets - Red" is not "rgba(0,255,0,1)"

    Scenario: check width and height
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And the width of the element "Sample Snippets - Red" is 102px
        And the height of the element "Sample Snippets - Red" is 102px
        And the width of the element "Sample Snippets - Red" is not 103px
        And the height of the element "Sample Snippets - Red" is not 103px
        Then the width of the element "Sample Snippets - Red" is 102px
        And the height of the element "Sample Snippets - Red" is 102px

    Scenario: check offset
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the element "Sample Snippets - Red" is positioned at 15px on the x axis
        And   the element "Sample Snippets - Red" is positioned at 242px on the y axis
        And   the element "Sample Snippets - Red" is not positioned at 16px on the x axis
        And   the element "Sample Snippets - Red" is not positioned at 243px on the y axis
        Then  the element "Sample Snippets - Red" is positioned at 15px on the x axis
        And   the element "Sample Snippets - Red" is positioned at 242px on the y axis
        And   the element "Sample Snippets - Red" is not positioned at 16px on the x axis
        And   the element "Sample Snippets - Red" is not positioned at 243px on the y axis

    Scenario: check selected
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the checkbox "Sample Snippets - Checkbox Not Selected" is not selected
        When  I click on the element "Sample Snippets - Checkbox Not Selected"
        Then  the checkbox "Sample Snippets - Checkbox Not Selected" is selected

    Scenario: set / read cookie
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the cookie "test" does not exist
        When  I set the cookie "test" to "test123"
        Then  the cookie "test" exists
        And   the cookie "test" has the value "test123"
        And   the cookie "test" does not have the value "test1234"

    Scenario: delete cookie
        Given I open the url "http://webdriverjs.christian-bromann.com/"
        And   the cookie "test" exists
        When  I delete the cookie "test"
        Then  the cookie "test" does not exist
