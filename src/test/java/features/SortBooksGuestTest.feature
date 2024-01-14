@sort_books
Feature: Sort Books

  Background:
    Given I open Book Store

  @title_Sort_A_Z
  Scenario: Sort books by title A_Z
    When I click the Title Header
    Then Books sorted in A_Z order

  @title_Sort_Z_A
  Scenario: Sort books by title Z_A
    When I second click the Title Header
    Then Books sorted in Z_A order

  @author_Sort_A_Z
  Scenario: Sort books by author A_Z
    When I click the Author Header
    Then Books sorted by author in A_Z order

  @author_Sort_Z_A
  Scenario: Sort books by author Z_A
    When I second click the Author Header
    Then Books sorted by author in Z_A order

  @publisher_Sort_A_Z
  Scenario: Sort books by publisher A_Z
    When I click the Publisher Header
    Then Books sorted by publisher in A_Z order

  @publisher_Sort_Z_A
  Scenario: Sort books by publisher Z_A
    When I second click the Publisher Header
    Then Books sorted by publisher in Z_A order
