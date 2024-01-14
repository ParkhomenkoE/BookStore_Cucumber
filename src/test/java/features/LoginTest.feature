@login
Feature: Login
  Background:
    Given I open Book Store

  @success_login
  Scenario: Success login with valid data
    When I follow Login Link in sideBar
    And I input "Rosa" to userName field
    And I input "Rosa35B!" to password field
    When I click the Login button
    Then I am on the Profile page

  @invalid_data
  Scenario Outline: Login with invalid data
    When I follow Login Link in sideBar
    And I input "<username>" to userName field
    And I input "<password>" to password field
    When I click the Login button
    Then I see the message "<errorMessageText>" is displayed

    Examples:
      | username   | password  | errorMessageText              |
      | Rosa       | Rosa35    | Invalid username or password! |
      | Rosalia    | Rosa35B!  | Invalid username or password! |

  @empty_fields
  Scenario Outline: Login with empty fields
    When I follow Login Link in sideBar
    And I input "<username>" to userName field
    And I input "<password>" to password field
    When I click the Login button
    Then I see the error message "<errorMessageText>" is displayed

    Examples:
      | username | password   | errorMessageText            |
      |          | Rosa35B!   | Please fill out this field. |
      | Rosa     |            | Please fill out this field. |
      |          |            | Please fill out this field. |
