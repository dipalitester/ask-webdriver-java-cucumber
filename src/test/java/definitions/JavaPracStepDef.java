package definitions;

import cucumber.api.java.en.Given;

public class JavaPracStepDef {
    @Given("I write my name as Dipali")
    public void iWriteMyNameAsDipali() {
        System.out.println("My name is Dipali");
    }

    @Given("I try writing some word")
    public void iTryWritingSomeWord() {
        System.out.println("excellent");
    }

    @Given("I try comparing {string} with {string}")
    public void iTryComparingWith(String sWord1, String sWord2) {
        System.out.println("My first word is " + sWord1 + " and " + "My second word is " + sWord2);
        System.out.println("First char for both strings: " + sWord1.charAt(0) + "," + sWord2.charAt(0));
        System.out.println("The length of each string: " + sWord1.length() + "," + sWord2.length());
        System.out.println("The first string is equal to second:" + sWord1.equals(sWord2));
        System.out.println("The first string is equal to second string ignoring case:" + sWord1.equalsIgnoreCase(sWord2));
        System.out.println("The first string is equal to second string upper the case:" + sWord1.equals(sWord2.toUpperCase()));
        System.out.println("The first string is equal to second string lower the case:" + sWord1.equals(sWord2.toLowerCase()));
    }

    @Given("I try practicing with numbers {int} and {int}")
    public void iTryPracticingWithNumbersAnd(int iNum1, int iNum2) {
        int iSum = iNum1 + iNum2;
        int iDif = iNum1 - iNum2;
        int iProd = iNum1 * iNum2;
        int iQuot = iNum1 / iNum2;

        System.out.println(iNum1 + "+" + iNum2 + "=" + iSum);
        System.out.println(iNum1 + "-" + iNum2 + "=" + iDif);
        System.out.println(iNum1 + "*" + iNum2 + "=" + iProd);
        System.out.println(iNum1 + "/" + iNum2 + "=" + iQuot);
    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sURL) {
        /* if else
        if (sURL.equals("google")) {
            System.out.println("https://www.google.com/");
        }
        else if (sURL.equals("duckduckgo")) {
            System.out.println("https://duckduckgo.com/");
        }
        else
            System.out.println("No url found");
    }*/
        switch (sURL) {
            case "google":
                System.out.println("https://www.google.com/");
            case "duckduckgo":
                System.out.println("https://duckduckgo.com/");
            case "swisscows":
                System.out.println("https://swisscows.com/");break;
            case "searchencrypt":
                System.out.println("https://www.searchencrypt.com/");
            default:
                System.out.println("No url found");
        }
        System.out.println("The selection is completed");
    }

    @Given("I try practicing with array operations")
    public void iTryPracticingWithArrayOperations() {
        int[] numbers = {3,2,1,3,2,1,4};
        String [] cars= {"Ford","Toyota", "BMW","others"};
        System.out.println("My first car was " + cars[1]);
        for (int i=0;i<=3;i++){
            System.out.println("Print cars " + cars[i]);
        }
        System.out.println("Total cars " + cars.length);
        System.out.println("I have  " + numbers[1]+ " "+ cars[1]);
    }
}
