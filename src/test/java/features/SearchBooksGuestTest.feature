@search_Books
Feature:  Search books

  Background:
    Given I open Book Store

  @by_Title
  Scenario: Search book by title
    When I input the title "Git Pocket Guide" in the search input field
    Then I see the book "Git Pocket Guide" in Book Store Catalog


  @by_Author
  Scenario: Search book by author
    When I input the author "Addy Osmani" in the search input field
    Then I see book by author "Addy Osmani" in Book Store Catalog

  @by_Publisher
  Scenario: Search book by publisher
    When I input the publisher "O'Reilly Media" in the search input field
    Then I see only the books by publisher "O'Reilly Media" in Book Store Catalog
