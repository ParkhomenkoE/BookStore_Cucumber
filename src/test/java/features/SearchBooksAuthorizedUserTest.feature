@search_books_authorized_user
Feature: Search after login
  Background: I`m in BookStore page
    Given I open Book Store
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    And I click the Login button
    Then I am on the Profile page

  @by_Title
  Scenario: Search book by title
    When I follow the Book Store Link
    And I input the title "Git Pocket Guide" in the search input field
    Then I see the book "Git Pocket Guide" in Book Store Catalog


  @by_Author
  Scenario: Search book by author
    When I follow the Book Store Link
    And I input the author "Addy Osmani" in the search input field
    Then I see book by author "Addy Osmani" in Book Store Catalog

  @by_Publisher
  Scenario: Search book by publisher
    When I follow the Book Store Link
    And I input the publisher "No Starch Press" in the search input field
    Then I see only the books by publisher "No Starch Press" in Book Store Catalog
