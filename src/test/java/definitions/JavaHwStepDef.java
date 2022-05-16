package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import java_cup.runtime.Scanner;

public class JavaHwStepDef {
    @Given("I am checking number {int}")
    public void iAmCheckingNumber(int iNum) {
        int mod = iNum % 2;
        boolean result = mod == 0;
        System.out.println("Number:" + iNum);
        System.out.println("Even:" + result);
    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int percent) {
        String[] Grades = {"A", "B", "C", "D"};
        System.out.println("My Grade is:");
        if (percent >= 90) {
            System.out.println("A");
        } else if (percent < 90 && percent >= 80) {
            System.out.println("B");
        } else if (percent < 80 && percent >= 70) {
            System.out.println("C");
        } else if (percent < 70 && percent >= 60) {
            System.out.println("D");
        } else if (percent <= 59) {
            System.out.println("E");
        }


    }

    @Given("I write all weekdays")
    public void iWriteAllWeekdays() {
        String[] Week = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

        for (int i = 0; i <= 6; i++) {
            System.out.println("Print Weekday " + Week[i]);
        }

    }


    @Given("Convert {int}foot to centimeters")
    public void convertFootToCentimeters(int iFoot) {
        double iCm = iFoot * 30.48;
        System.out.println(iFoot + " * " + 30.48 + "=" + iCm);
        System.out.println(iFoot + "Feet equals" + iCm + " Cms");
    }

    @And("I try converting {int} US Gallon to litres")
    public void iTryConvertingUSGallonToLitres(int iGallon) {
        double iLitre = iGallon * 3.785;
        System.out.println(iGallon + "*" + 3.785 + "=" + iLitre);
        System.out.println(iGallon + "Gallon is equal to " + iLitre + " Litres");
    }

    @And("I try converting {int} Celsius to Fahrenheit")
    public void iTryConvertingCelsiusToFahrenheit(int iCelsius) {
        double iFahrenheit = (iCelsius * (9 / 5)) + 32;
        System.out.println(iCelsius + "*" + 9 + "/" + 5 + "+" + 32 + "=" + iFahrenheit);
        System.out.println(iCelsius + "Degree Celsius is equal to" + iFahrenheit + " Degree Fahrenheit");
    }


    @Given("I find the cost of {int} pounds of {string}")
    public void iFindTheCostOfPoundsOf(int iPound, String sFruit) {
        double[] iCost = {0, 0.5, 1.5, 2, 2.5};
        for (int i = 0; i < iCost.length; i++) ;
        switch (sFruit) {
            case "apples":
                double a$ = iCost[0] * iPound;
                System.out.println("Cost of apples is " + a$ + "total");
                break;
            case "cherries":
                double c$ = iCost[1] * iPound;
                System.out.println("Cost of cherries is " + c$ + "total");
                break;
            case "plums":
                double p$ = iCost[2] * iPound;
                System.out.println("Cost of plums is " + p$ + "total");
                break;
            case "grapefruits":
                double g$ = iCost[3] * iPound;
                System.out.println("Cost of grapefruits is " + g$ + "total");
                break;
            case "oranges":
                double o$ = iCost[4] * iPound;
                System.out.println("Cost of oranges is " + o$ + "total");
                break;
            default:
                System.out.println("This product is unavailable");
        }

    }
}
