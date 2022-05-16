#test

  @webdriver
  Feature: Exercise for webdriver feature
    Background:
      Given I navigate"quote"
    @webdriver1
    Scenario: Open URL using site name
      #Given I navigate"quote"
      And I wait for 3 sec
      And I print page details

      @webdriver2
      Scenario: Email field verification
        When I type "abc" into email field
        And I wait for 3 sec
        And I click submit button
        Then error message "Please enter a valid email address." should be displayed

        @Webdriver3
        Scenario: Date picker
          When I try validating date picker
          And I wait for 3 sec
          Then I validate the date picker entered the date "05/05/2000"

          @Webdriver4
          Scenario: Name field
            When I click on name field
            Then I open dialogue window
            Then I type in "po" First name "qa" Middle name "tester" Last name and validate the Full name is "po qa tester"
            And I wait for 2 sec
           # Then I click Save button
            #Then I validate the Full name is "po qa tester"
