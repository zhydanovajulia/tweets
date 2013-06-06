@javascript
Feature: In order to see favorites tweets
  A user
  Must have the ability to visit the favorites page

  @favorites
  Scenario: A user visit the favorites page
    When I visit the favorites page
    Then I should see "Disrupting Mobile Games Porting | CIKLUM BLOG http://t.co/oDLptnMKFB via @sharethis" within first tweet

  @favorites
  Scenario: A user can remove the tweet from favorites
    When I visit the favorites page
    And I click "Unlike" on the first tweet
    Then I should not see "Disrupting Mobile Games Porting | CIKLUM BLOG http://t.co/oDLptnMKFB via @sharethis" within first tweet
