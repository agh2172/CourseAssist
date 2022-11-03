Feature: sign in a user

    As an inquisitive student
    So that I can get help on my course selection
    I want to sign into my existing account

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor     | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Computer Science | Economics | ss6167 |

    And I am on the home page

Scenario: sign in an existing user
    And I fill in "UNI" with "ss6167"
    And I press "Enter"
    Then I should not see "User not found. Please sign up first."


Scenario: sign in a user that does not exist
    And I fill in "UNI" with "agh2172"
    And I press "Enter"
    Then I should see "User not found. Please sign up first."