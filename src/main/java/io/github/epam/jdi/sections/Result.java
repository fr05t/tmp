package io.github.epam.jdi.sections;

import com.epam.jdi.uitests.web.selenium.elements.complex.TextList;
import io.github.epam.jdi.enums.ResultElements;
import io.github.epam.jdi.jsonobjects.PageParameters;
import io.github.epam.jdi.pages.MetalColors;
import org.openqa.selenium.support.FindBy;
import org.testng.Assert;
import ru.yandex.qatools.allure.annotations.Step;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static io.github.epam.jdi.JDIExampleSite.result;
import static io.github.epam.jdi.enums.ResultElements.*;

public class Result extends MetalColors {

    private String summary;
    private List<String> elements;
    private String color;
    private String metal;
    private List<String> salad;

    @FindBy(css = ".results > li")
    private TextList resultText;

    public void getResult() {

        for (Object elm : resultText.getLabels()) {
            if (elm.toString().contains(SUMMARY.getValue())) {
                summary = elm.toString().split(": ")[1];
            }
            if (elm.toString().contains(ELEMNTS.getValue())) {
                elements = Arrays.asList(elm.toString().substring("Elements: ".length()).split(", "));
            }
            if (elm.toString().contains(COLOR.getValue())) {
                color = elm.toString().split(": ")[1];
            }
            if (elm.toString().contains(METAL.getValue())) {
                metal = elm.toString().split(": ")[1];
            }
            if (elm.toString().contains(VEGETABLES.getValue())) {
                salad = Arrays.asList(elm.toString().substring("Vegetables: ".length()).split(", "));
            }
        }
    }

    public String returnSummary(ArrayList<String> elms) {
        return (Integer.parseInt(elms.get(0)) + Integer.parseInt(elms.get(1))) + "";
    }

    //=====================Asserts=============================

    @Step
    public void checkResult(PageParameters pageParameters) {
        result.getResult();

        Assert.assertEquals(elements, pageParameters.getElements());
        Assert.assertEquals(salad, pageParameters.getVegetables());
        Assert.assertEquals(color, pageParameters.getColor());
        Assert.assertEquals(metal, pageParameters.getMetals());

    }

}
