package steps;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class userSteps {
    // given statement about what were testing
    @Given("the registration system is available")
    public void registration_System_is_available(){
        System.out.println("Registration system is available");
    }
    // duplicate username stuff
    @When("a user registers with a unique username")
    public void username_unique(){
        System.out.println("Registering with a unique username");
    }
    @When("a user registers with an existing username")
    public void username_existing(){
        System.out.println("Registering with a existing username");
    }
    @Then("the registration should succeed")
    public void registration_should_succeed() {
        System.out.println("Registration succeeded");
    }
    @Then("the registration should fail")
    public void registration_should_fail() {
        System.out.println("Registration failed");
    }
    // username formatting
    @When("a user registers with a username {string}")
    public void user_registers_with_username(String username) {
        System.out.println("Testing username: " + username);
    }
    @Then("the username validation should be {string}")
    public void username_validation_should_be(String result) {
        System.out.println("Expected username validation: " + result);
    }

    //password formatting
    @When("a user registers with a password {string}")
    public void username_registers(String password){
        System.out.println("Testing password: " + password);
    }
    @Then("the password validation should be {string}")
    public void username_validation(String result) {
        System.out.println("Expected password validation: " + result);
    }
}
