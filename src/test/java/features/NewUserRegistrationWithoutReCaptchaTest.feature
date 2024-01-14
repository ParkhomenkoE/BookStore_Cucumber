@registration
Feature: New User Registration
  Background:
    Given I open Book Store

  @registration_withoutReCaptcha
  Scenario: New User Registration without ReCaptcha
    When I click the Login button on the Book Store page
    Then I am on the Login page
    When I click New User button
    Then I am on the Register page
    When I enter the "May" in the FirstName input field
    And I enter "April" in the LastName input field
    And I enter "May" in the UserName input field
    And I enter "12May34!" password in the Password input field
    And click the Register button
    Then I see on the Login page "Please verify reCaptcha to register!" message
