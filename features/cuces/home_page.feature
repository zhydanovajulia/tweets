@javascript
Feature: In order to see Ciklum tweets
  A user
  Must have the ability to visit the home page

  @tweets
  Scenario: A user visit the home page
    When I visit the home page
    Then I should see "Congratulations to our partner @SmartGuyDK on winning Danish E-commerce Cross-Border Award 2013 http://t.co/hh82K4CfJd" within first tweet

  @tweets
  Scenario: A user can add the tweet to the favorites and remove it
    When I visit the home page
    And I click "Like" on the first tweet
    Then I should see "Unlike" within first tweet
    When I click "Unlike" on the first tweet
    Then I should see "Like" within first tweet