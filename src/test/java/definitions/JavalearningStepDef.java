package definitions;

import cucumber.api.java8.En;

public class JavalearningStepDef implements En {
    public JavalearningStepDef() {
        Given("^I print Hello Everyone$", () -> {
            System.out.println("Hello Everyone");
        });
        Given("^I put any word$", () -> {
            System.out.println("word");

        });
        Given("^I compare \"([^\"]*)\" with \"([^\"]*)\"$", (String arg0, String arg1) -> {
            System.out.println("My first word is" + arg0 + "and" +"second word is" + arg1);
            System.out.println("First char for both strings:"+arg0.charAt(0)+"" + arg1.charAt(0) );
        });
    }
}
