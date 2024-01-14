@deleteAccount
Feature: Delete account

  Background:
    Given I open Book Store
    When I follow Login Link in sideBar
    And I input "May" to userName field
    And I input "12May34!" to password field
    And I click the Login button
    Then I am on the Profile page

  @delete_account
  Scenario: Delete Account
    When I click Delete Account button
    And I confirm the alert delete message
    Then I am on the Login page
    When I input "May" to userName field
    And I input "12May34!" to password field
    And I click the Login button
    Then I see "Invalid username or password!" message
