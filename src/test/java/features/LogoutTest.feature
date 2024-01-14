@logout
Feature: Logout
  Background: I in BookStore page
    Given I open Book Store
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    When I click the Login button
    Then I am on the Profile page


  @success_logout
  Scenario: Successful logout
    When I click Log Out button
    Then I am on the Login page
    When I follow the Profile link on the Sidebar
    Then I see the the message "Currently you are not logged into the Book Store application, please visit the login page to enter or register page to register yourself."

