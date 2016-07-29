Feature: User accesses their inbox
  As a user,
  in order to view my conversations,
  I need to access my inbox.

  Background:
    Given I am successfully logged in

  # use the factory_girl factory ':user' found in the spec/factories/users.rb to specify the name of the user
  # this will also work if the user is defined somewhere else, like when created in the user_login.feature
    #stub_user = build_stubbed(:user)

  # here we created or own user for this test
  #Given the following users exist
  #    | username  | password |
  #    | visitor   | password |


  Scenario Outline:
    Then I should see "<arg1>"
    And I should see "<arg2>"
    And I should see "<arg3>"
    And I should see "<arg4>"
    Examples:
      | arg1                    | arg2                | arg3   | arg4   |
      | Signed in successfully  | Hello, user[:name]  | Inbox  | Logout |


  #Scenario Outline:
  #  #Given that I am logged in as "<username>" with password "<password>"
  #  And I am on the home page
  #  And I click "<link>"
  #  Then I should be on the inbox page
  #  Examples:
  #    | username | password | link  |
  #    | visitor  | password | Inbox |


  Scenario:
    When I click "Logout"
    Then I should be on the home page
    And I should see "Signed out successfully"


