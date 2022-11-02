Feature: create a new user

    As an inquisitive student
    So that I can get help on my course selection
    I want to create a new account

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor     | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Computer Science | Economics | ss6167 |

Scenario: add a new user to the database

    When I follow "Sign Up"
    And I fill in "first" with "Axel"
    And I fill in "second" with "Henrikson"
    And I fill in "year" with "2023"
    And I fill in "school" with "CC"
    And I fill in "major" with "Computer Science"
    And I fill in "minor" with "Ecnomonics"
    And I fill in "uni" with "agh2172"
    And I follow "Next"
    Then the major of "agh2172" should be "Computer Science"



