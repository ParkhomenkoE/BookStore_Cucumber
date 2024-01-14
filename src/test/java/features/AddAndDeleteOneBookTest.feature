@addAndDeleteOneBook
Feature: Add and delete one book

  Background:
    Given I open Book Store
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    When I click the Login button
    Then I am on the Profile page
    And I see the Profile Book Catalog is empty

  @add_oneBook
  Scenario: Add one book to the User`s Profile
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I click the "Git Pocket Guide" Title Link
    Then I am on the Book Store Detailed Information Page
    And I see the detailed information about "Git Pocket Guide" book
    When I click the Add To Your Collection button
    And I confirm the alert message
    And I follow the Profile link on the Sidebar
    Then I see the "Git Pocket Guide" book in User`s collection
    And I see that the book is only one in User`s collection
    When I click delete book icon
    And I confirm the alert delete message
    Then I see the Profile Book Catalog is empty
