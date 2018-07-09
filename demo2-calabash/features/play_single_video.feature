Feature: Play single video feature

  Scenario: Plays a single youtube video
    When I press "Play a single video"
    Then I wait up to 30 seconds for "Video has started" to appear

  Scenario: Plays a single youtube video, then rotates the video
    When I press "Play a single video"
    Then I wait up to 30 seconds for "Video has started" to appear
    Then I rotate device to landscape
    Then I wait for 10 seconds
    Then I rotate device to portrait
    Then I wait up to 30 seconds for "Video has started" to appear

  Scenario: Plays a single youtube video, then pause the video
    When I press "Play a single video"
    Then I wait up to 30 seconds for "Video has started" to appear
    Then I click on screen 50% from the left and 50% from the top
    Then I click on screen 50% from the left and 50% from the top
    Then I wait up to 30 seconds for "Video has paused" to appear
    Then I wait for 5 seconds
