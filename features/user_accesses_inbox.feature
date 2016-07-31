Feature: User accesses their inbox
  As a user,
  in order to view my conversations,
  I need to access my inbox.

# Given that the user is logged in
  Background:
    Given the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

  Scenario: Log in a user
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be on the home page
    And I should see "Signed in successfully."
    And I should see "Hello, visitor"
    And I should see "Inbox" link
    And I should see "Logout" link

  Scenario: Log out
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    And I click "Logout"
    Then I should be on the home page
    And I should see "Signed out successfully."