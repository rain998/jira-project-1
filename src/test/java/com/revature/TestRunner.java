package com.revature;
import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectPackages;
import org.junit.platform.suite.api.Suite;

import static io.cucumber.junit.platform.engine.Constants.GLUE_PROPERTY_NAME;
import static io.cucumber.junit.platform.engine.Constants.PLUGIN_PROPERTY_NAME;

@Suite // tells JUnit this is the entry point for test suite
@IncludeEngines("cucumber") // tells JUnit cucumber will be running one or more of these tests
@SelectPackages("features") // tells JUnit where to find the tests
@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "com.revature.steps") // tells Cucumber where to find glue steps
@ConfigurationParameter(
        key = PLUGIN_PROPERTY_NAME,
        value = "pretty, html:reports/cucumber-report.html, junit:reports/cucumber-report.xml"
) // makes CLI report easy to read, makes HTML report, and makes XML report

public class TestRunner {
}
