Feature: Rotation feature
    
Scenario: Rotate to landscape mid calculation
    When I touch the "8" text
    Then I touch the "+" text
    Then I touch the "6" text
    Then I wait for 3 seconds
    Then I rotate device to landscape
    And I touch the "=" text
    Then I should see text containing "14.0"
    Then I wait for 5 seconds

Scenario: Rotate to landscape mid calculation
    Given I rotate device to landscape
    When I touch the "7" text
    Then I touch the "+" text
    Then I touch the "6" text
    Then I wait for 3 seconds
    Then I rotate device to portrait
    And I touch the "=" text
    Then I should see text containing "13.0"
    Then I wait for 5 seconds