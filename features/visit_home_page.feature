Feature: Viewer visits the home page

  In order to start using the mailboxer app
  As a Viewer
  I want to confirm this is the home page of the CraftAcademy Mailboxer app

  Background:

    Given I am on the home page

  Scenario Outline: View the app home page
    Then I should see "<navcontent>"
    And I should see "<content>"
    Examples:
      | navcontent   | content                 |
      | CA Mailboxer | Craft Academy Mailboxer |

  Scenario Outline: See the beginning of the login and signup processes on the home page
    Then I should see "<navmenu1>" in a link
    And I should see "<navmenu2>" in a link
    Examples:
      | navmenu1 | navmenu2 |
      | Login    | Sign up  |