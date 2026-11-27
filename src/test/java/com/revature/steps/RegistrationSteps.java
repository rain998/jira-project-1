package com.revature.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class RegistrationSteps {
    // Given statement about what we're testing
    @Given("The registration system is available")
    public void registrationSystemIsAvailable() {
        System.out.println("Registration is available");
    }

    // Username tests
    @When("A user registers with username: {string}")
    public void usernameValidation(String username) {
        System.out.println("Testing username: " + username);
    }
    @Then("Username validation should be: {string}")
    public void usernameValidationResult(String result) {
        System.out.println("Expected username validation: " + result);
    }

    // Password tests
    @When("A user registers with password: {string}")
    public void passwordValidation(String password) {
        System.out.println("Testing password: " + password);
    }

    @Then("Password validation should be: {string}")
    public void passwordValidationResult(String result) {
        System.out.println("Expected password validation: " + result);
    }
}
