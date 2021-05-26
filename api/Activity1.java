
Skip to content
Pull requests
Issues
Marketplace
Explore
@MrunaliniChopade
sukanya-mankala /
FST-M1
forked from training-support/FST-M1

0
0

    45

Code
Pull requests
Actions
Projects
Wiki
Security

    Insights

FST-M1/api/Activity1.java /
@sukanya-mankala
sukanya-mankala Add files via upload
Latest commit ad013ca 20 days ago
History
1 contributor
70 lines (46 sloc) 1.85 KB
package restAssuredExample;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.equalTo;

import org.testng.annotations.Test;
//import static io.restassured.RestAssured.given;
//import static org.hamcrest.CoreMatchers.equalTo;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;

public class Activity1 {
	
	// Set base URL
    final static String ROOT_URI = "https://petstore.swagger.io/v2/pet";
	
    @Test(priority=1)
  public void post_pet() {
	  // Request
	  
	
	  String reqBody = "{\"id\": 4002003,\"name\": \"Sukanya\",\"status\": \"alive\"}";
  
  
  Response response =RestAssured.given().contentType(ContentType.JSON) // Set headers
          .body(reqBody) // Add request body
          .when().post(ROOT_URI); // Send POST request
  
  
  
  // Assertion
  
  response.then().body("id", equalTo(4002003));
  response.then().body("name", equalTo("Sukanya"));
  response.then().body("status", equalTo("alive"));
  
}
    @Test(priority=2) 
  public void get_pet() {
	  Response response =RestAssured.given().contentType(ContentType.JSON)
			  .when().pathParam("petId", "4002003")// passing path param
			  .get(ROOT_URI+"/{petId}");
	  
	   
	  //Assertion
	  
	  response.then().body("id",equalTo(4002003));
	  response.then().body("name", equalTo("Sukanya"));
	  response.then().body("status",equalTo("alive"));
  			  
  }
  
    @Test(priority=3)
  public void delete_pet() {
	  Response response =RestAssured.given().contentType(ContentType.JSON)
			  .when().pathParam("petId", "4002003")
			  .delete(ROOT_URI+"/{petId}");
	  
	  String responseBody =response.getBody().prettyPrint();
	  System.out.println("The response is "+responseBody);
	  
	  //Assertions
	  
	  response.then().body("code",equalTo(200));
	  response.then().body("message", equalTo("4002003"));
	  
  }
}

   