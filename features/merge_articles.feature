Feature: Merging articles
  In order to complete part one of typo homework
  I should write this nonsense feature

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    And I fill in "article_title" with "Foobar1"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum 1"
    And I press "Publish"
    And I am on the new article page
    And I fill in "article_title" with "Foobar2"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum 2"
    And I press "Publish"

  Scenario: Merge articles
    When I go to the home page
    And I follow "Foobar1"
    Then I should see 'Merge articles' button
