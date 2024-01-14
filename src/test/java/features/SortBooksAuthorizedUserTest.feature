@sort_books_authorized_user
Feature: Sort books after authorization
  Background:
    Given
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    And I click the Login button
    Then I am on the Profile page

  @titleSort_A_Z
  Scenario: Sort books by title A_Z
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I click the Title Header
    Then Books sorted in A_Z order

  @titleSort_Z_A
  Scenario: Sort books by title Z_A
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I second click the Title Header
    Then Books sorted in Z_A order

  @authorSort_A_Z
  Scenario: Sort books by author A_Z
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I click the Author Header
    Then Books sorted by author in A_Z order

  @authorSort_Z_A
  Scenario: Sort books by author Z_A
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I second click the Author Header
    Then Books sorted by author in Z_A order

  @publisherSort_A_Z
  Scenario: Sort books by publisher A_Z
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I click the Publisher Header
    Then Books sorted by publisher in A_Z order

  @publisherSort_Z_A
  Scenario: Sort books by publisher Z_A
    When I follow the Book Store Link
    Then I am on the Book Store Page
    When I second click the Publisher Header
    Then Books sorted by publisher in Z_A order
