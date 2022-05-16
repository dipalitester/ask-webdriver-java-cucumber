#exercise for quote application
  #Epic:http://jiraportnov.com/browse/ACA-679
  #Author :Dipali
@quote
Feature: Quote page scenarios

  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"

  @quote1
  Scenario: Validate responsive UI behaviour
    When I resize window to 1920 and 1080
    Then I wait for 2 sec
    Then element with xpath "//b[@id='location']" should be displayed
    When I resize window to 1440 and 980
    Then I wait for 2 sec
    Then element with xpath "//b[@id='location']" should be displayed
    When I resize window to 393 and 851
    Then I wait for 2 sec
    But element with xpath "//b[@id='location']" should not be displayed

  @quote2
  Scenario: Validate minimal Username field length requirement as 2 characters
    When I type "P" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
    And I wait for 2 sec
    Then I clear element with xpath "//input[@name='username']"
    When I type "po" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 5 sec
    But element with xpath "//label[@id='username-error']" should not be displayed
    Then I clear element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    And element with xpath "//label[@id='username-error']" should contain text "This field is required."

  @quote3
  Scenario: Validate ”Email” field behavior Validate that email field accepts only valid email addresses.
       # Validate with invalid email id
    When I type "abc" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
       #Validate with valid email id
    Then I clear element with xpath "//input[@name='email']"
    When I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='email-error']" should not be displayed
    #Validate with blank email field
    Then I clear element with xpath "//input[@name='email']"
    And I click on element with xpath "//input[@name='email']"
    And  I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='email-error']" should contain text "This field is required."

  @quote4
  Scenario: Fill out and validate “Password” set of fields. Validate that Confirm Password is disabled if Password field is empty.
      # Validate that confirm password is disabled when empty
    When I click on element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    #Validate that confirm password is enabled when password is typed in password field
    When I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    # Validate the length of password
    Then I clear element with xpath "//input[@id='password']"
    And I type "12" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//input[@id='confirmPassword']"
    And I wait for 2 sec
    Then element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
    Then I type "345" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='confirmPassword-error']" should contain text "This field is required."
    #Validate password and confirm password match
    Then I click on element with xpath "//input[@id='confirmPassword']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I wait for 1 sec
    Then element with xpath "//label[@id='confirmPassword-error']" should not be displayed
     #Validate password and confirm password don't match
    Then I clear element with xpath "//input[@id='confirmPassword']"
    And I type "abcde" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should contain text "Passwords do not match!"

  @quote5
  Scenario: Validate	“Name”	field	behavior
    # Validate Modal dialog: verify	that upon clicking inside of Name field	popup dialog appears.
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    #Name concatenation: verify	that after putting	FirstName, MiddleName,LastName, it concatenates	it
    #correctly and puts the value in the	Name field.
    Then I type "po" into element with xpath "//input[@id='firstName']"
    And I type "qa" into element with xpath "//input[@id='middleName']"
    And I type "tester" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "po qa tester"

  @quote6
  Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
    #validate without checking the check box
    When I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should have text as "- Must check!"
    And element with xpath "//input[@ng-model='formData.agreedToPrivacyPolicy']" should not contain text "I have read and accept Privacy Policy."
    #validate by checking the check box
    And I wait for 2 sec
    When I click on element with xpath "//input[@ng-model='formData.agreedToPrivacyPolicy']"
    Then I wait for element with xpath "//span[contains(text(),'I have read and accept Privacy Policy.')]" to be present

  @quote7
  Scenario: Submit	the	form	and	verify	the	data.
  #Validate	that after form	submission entered fields values are present on	the	page.Validate that password	is	not	displayed on the	page.
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    Then I type "po" into element with xpath "//input[@id='firstName']"
    And I type "qa" into element with xpath "//input[@id='middleName']"
    And I type "tester" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "po qa tester"
    Then I type "poqa" into element with xpath "//input[@ng-model='formData.username']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    Then I click on element with xpath "//input[@id='confirmPassword']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I wait for 1 sec
    And I click on element with xpath "//input[@name='email']"
    And I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 2 sec
    And I click on element with xpath "//input[@ng-model='formData.agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 2 sec
    Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed
    Then element with xpath "//b[@name='name']" should contain text "po qa tester"
    And element with xpath "//b[@name='username']" should contain text "poqa"
    And element with xpath "//b[@name='password']" should not contain text "12345"
    And element with xpath "//b[@name='email']" should contain text "abc@abc.com"
    And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"

  @quote8
  Scenario: Validate by entering	the	following non-required fields in the order:
    #•	Phone	Number
     #•	Country	of	Origin
     #•	Gender
     #•	Allowed	to	Contact?
     #•	Address
     #•	Car	Make
     #•	3rd	party	agreement	acceptance
     #•	Date	of	Birth
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    Then I type "po" into element with xpath "//input[@id='firstName']"
    And I type "qa" into element with xpath "//input[@id='middleName']"
    And I type "tester" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "po qa tester"
    And I click on element with xpath "//select[@name='countryOfOrigin']"
    And I type "123 Ice cream suite Doughnut drive, Pastry" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//option[@value='USA']"
    Then I type "9876543210" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//input[@value='female']"
    Then I click on element with xpath "//option[contains(text(),'Toyota')]"
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I type "poqa" into element with xpath "//input[@ng-model='formData.username']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled
    Then I click on element with xpath "//input[@id='confirmPassword']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I wait for 1 sec
    And I click on element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
    Then I click on element with xpath "//option[@value='2000']"
    Then I click on element with xpath "//option[@value='4']"
    Then I click on element with xpath "//a[contains(text(),'5')]"
    And I wait for 2 sec
    And I click on element with xpath "//input[@name='email']"
    And I type "abc@abc.com" into element with xpath "//input[@name='email']"
    And I wait for 2 sec
    #New window
    Then I click on element with xpath "//button[contains(text(),'Related documents (click)')]"
    And I switch to new window
    Then I wait for element with xpath "//h4[contains(text(),'Documents List:')]" to be present
    And I wait for 2 sec
    And I switch to first window
    And  I wait for 2 sec
    # Alert pop up
  And I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    And I wait for 3 sec
    # iframe
  And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
    And I type "Pogo Doremon" into element with xpath "//input[@id='contactPersonName']"
    And I type "9876543420" into element with xpath "//input[@id='contactPersonPhone']"
    And I switch to default content
    #submit form
    And I wait for 2 sec
    And I click on element with xpath "//input[@ng-model='formData.agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    And I wait for 4 sec
    Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed
    Then element with xpath "//b[@name='name']" should contain text "po qa tester"
    And element with xpath "//b[@name='username']" should contain text "poqa"
    And element with xpath "//b[@name='password']" should not contain text "12345"
    And element with xpath "//b[@name='email']" should contain text "abc@abc.com"
    And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"

  
  


