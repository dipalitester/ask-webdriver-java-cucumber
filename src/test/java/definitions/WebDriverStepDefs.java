package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

import static org.testng.Assert.assertEquals;
import static support.TestContext.getDriver;

public class WebDriverStepDefs {
    @Given("I navigate{string}")
    public void iNavigate(String sURL) {
        switch (sURL) {
            case "google":
                getDriver().get("https://www.google.com/");
            case "duckduckgo":
                getDriver().get("https://www.duckduckgo.com/");

            case "swisscows":
                getDriver().get("https://www.swisscows.com/");
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");

            default:
                System.out.println("No URL found");

        }
    }

    @And("I print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandles());
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);
    }

    @And("I click submit button")
    public void iClickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }


    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sMessage) {
        String sActualmessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println(sActualmessage);
        assertThat(sActualmessage.equals(sMessage));
    }


    @When("I try validating date picker")
    public void iTryValidatingDatePicker() {
        getDriver().findElement(By.xpath("//input[@id='dateOfBirth']")).click();
        getDriver().findElement(By.xpath("//select[@class='ui-datepicker-month']/option[5]")).click();
        getDriver().findElement(By.xpath("//select[@class='ui-datepicker-year']/option[@value='2000']")).click();
        getDriver().findElement(By.xpath("//td[@data-handler='selectDay']/a[text()='5']")).click();
        String actualDate = getDriver().findElement(By.xpath("//input[@id='dateOfBirth']")).getAttribute("value");
        assertThat(actualDate.equals("05/05/2000"));
    }

    @Then("I validate the date picker entered the date {string}")
    public void iValidateTheDatePickerEnteredTheDate(String date) {
        getDriver().findElement(By.xpath("//input[@id='dateOfBirth']")).click();
        getDriver().findElement(By.xpath("//select[@class='ui-datepicker-month']/option[5]")).click();
        getDriver().findElement(By.xpath("//select[@class='ui-datepicker-year']/option[@value='2000']")).click();
        getDriver().findElement(By.xpath("//td[@data-handler='selectDay']/a[text()='5']")).click();
        String actualDate = getDriver().findElement(By.xpath("//input[@id='dateOfBirth']")).getAttribute("value");
        assertThat(actualDate.equals("05/05/2000"));

    }

    @When("I click on name field")
    public void iClickOnNameField() {
        getDriver().findElement(By.xpath("//input[@id='name']")).click();

    }

    @Then("I open dialogue window")
    public void iOpenDialogueWindow() {
        getDriver().findElement(By.xpath("//div[@id='nameDialog']")).isDisplayed();
        String sName = getDriver().findElement(By.xpath("//span[@class='ui-dialog-title']")).getText();
        assertThat(sName.equals("Name"));
    }



    @Then("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }




    @Then("I type in {string} First name {string} Middle name {string} Last name and validate the Full name is {string}")
    public void iTypeInFirstNameMiddleNameLastNameAndValidateTheFullNameIs(String sFname, String sMname, String sLname, String sFullname) {
        getDriver().findElement(By.xpath("//input[@id='firstName']")).sendKeys(sFname);
        getDriver().findElement(By.xpath("//input[@id='middleName']")).sendKeys(sMname);
        getDriver().findElement(By.xpath("//input[@id='lastName']")).sendKeys(sLname);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        String sActualName = sFname +" " +sMname +" "+sLname;
        System.out.println("Actual name is "+ sActualName);
        System.out.println("Expected name is " + sActualName);
        assertThat(sActualName.equals(sFullname));
        assertEquals(sActualName, sFullname);
    }
}
