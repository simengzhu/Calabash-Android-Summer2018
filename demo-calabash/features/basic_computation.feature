Feature: Basic computation feature

  Scenario: Add two numbers using touch text
    When I touch the "8" text
    Then I touch the "+" text
    Then I touch the "6" text
    And I touch the "=" text
    Then I should see text containing "14.0"
    Then I wait for 5 seconds

  Scenario: Add two numbers using id
    When I press view with id "button4"
    Then I press view with id "buttonMultiply"
    Then I press view with id "button7"
    Then I press view with id "buttonNeg"
    And I press view with id "buttonEquals"
    Then I should see "-28.0"
    Then I wait for 5 seconds

  # My buttons starts from button0 (i.e., zero-index)
  # So button number 6 (6th button) is actually button with value 5
  Scenario: Press button by using its order amongst all buttons
    When I press button number 6
    Then I press button number 7
    Then I press button number 1
    Then I should see "560"
    Then I wait for 5 seconds

  Scenario: Divide two Numbers with press button text
    When I press the "1" button
    Then I press the "3" button
    Then I press the "2" button
    Then I press the "/" button
    Then I press the "1" button
    Then I press the "2" button
    And I press the "=" button
    Then I should see "11.0"
    Then I wait for 5 seconds

  Scenario: Consecutive calculations
    When I press the "1" button
    Then I press the "3" button
    Then I press the "2" button
    Then I press the "/" button
    Then I press the "1" button
    Then I press the "2" button
    And I press the "=" button
    Then I should see "11.0"
    Then I wait for 1 second

    # Set operand 1 for second calculation
    Then I press view with id "button6"
    Then I press the "=" button

    # The next button (button 13) is the multiply button
    Then I press button number 13
    Then I touch the "7" text
    Then I touch the "+" text
    Then I press the "3" button
    And I press view with id "buttonEquals"
    Then I should see text containing "45.0"
    Then I wait for 5 seconds