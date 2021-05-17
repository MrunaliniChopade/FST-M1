package com.sdet.testNGTests;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

public class Activity5 {

	    WebDriver driver;
	    
	    @BeforeTest(alwaysRun = true)
	    public void beforeMethod() {
	       
	        driver = new FirefoxDriver();
	        driver.get("https://www.training-support.net/selenium/target-practice");
	    }
	    
	    @Test (groups = {"HeaderTests", "ButtonTests"})
	    public void pageTitleTest() {
	        String title = driver.getTitle();
	        System.out.println("Title is: " + title);
	        Assert.assertEquals(title, "Target Practice");
	    }
	    
	    @Test (dependsOnMethods = {"pageTitleTest"}, groups = {"HeaderTests"})
	    public void HeaderTest1() {
	        WebElement header3 = driver.findElement(By.cssSelector("h3#third-header"));
	        Assert.assertEquals(header3.getText(), "Third header");
	    }
	    
	    @Test (dependsOnMethods = {"pageTitleTest"}, groups = {"HeaderTests"})
	    public void HeaderTest2() {
	        WebElement header5 = driver.findElement(By.cssSelector("h5.green"));
	        System.out.println(header5.getCssValue("color"));
	        Assert.assertEquals(header5.getCssValue("color"), "rgb(33, 186, 69)");
	    }
	    
	    @Test (dependsOnMethods = {"pageTitleTest"}, groups = {"ButtonTests"})
	    public void ButtonTest1() {
	        WebElement button1 = driver.findElement(By.cssSelector("button.olive"));
	        Assert.assertEquals(button1.getText(), "Olive");
	    }
	    
	    @Test (dependsOnMethods = {"pageTitleTest"}, groups = {"ButtonTests"})
	    public void ButtonTest2() {
	        WebElement button2 = driver.findElement(By.cssSelector("button.brown"));
	        System.out.println(button2.getCssValue("color"));
	        Assert.assertEquals(button2.getCssValue("color"), "rgb(255, 255, 255)");
	    }

	   
	    @AfterTest(alwaysRun = true)
	    public void afterMethod() {
	        driver.close();
	    }
}