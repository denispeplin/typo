Feature: Merging articles
  In order to complete part one of typo homework
  I should write this nonsense feature

  Background:
    Given the blog is set up

    And the following articles exists:
      | title    | author | body   |
      | Article1 | admin  | body 1 |
      | Article2 | admin  | body 2 |

  Scenario: Merge articles
    Given I am logged into the admin panel
    When I go to the home page
    And I follow "Article1"
    Then I should see 'Merge articles' button
