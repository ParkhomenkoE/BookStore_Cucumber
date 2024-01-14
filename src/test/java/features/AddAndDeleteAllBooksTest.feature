@addAndDeleteAllBooks
Feature: Add and delete all books

  Background:
    Given I open Book Store
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    When I click the Login button
    Then I am on the Profile page
    And I see the Profile Book Catalog is empty

  @add_and_delete_allBooks
  Scenario: Add and delete two books to the User`s Profile
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I click the "Git Pocket Guide" Title Link
    Then I am on the Book Store Detailed Information Page
    And I see the detailed information about "Git Pocket Guide" book
    When I click the Add To Your Collection button
    And I confirm the alert message
    And I click Back To Book Store button
    Then I am on the Book Store Page
    When I click the "Learning JavaScript Design Patterns" Title Link
    Then I am on the Book Store Detailed Information Page
    And I see the detailed information about "Learning JavaScript Design Patterns" book
    When I click the Add To Your Collection button
    And I confirm the alert message
    And I follow the Profile link on the Sidebar
    Then I see the "Git Pocket Guide" book in User`s collection
    And I see the "Learning JavaScript Design Patterns" book in User`s collection
    And I see two books in User`s collection
    When I click Delete All Books button
    And I confirm the alert delete message
    Then I see the Profile Book Catalog is empty


