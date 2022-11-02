Feature: create a new user

    As an inquisitive student
    So that I can get help on my course selection
    I want to create a new account

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor     | uni    |
    | Jackson    | Roberts     | 2023         | CC     | Computer Science | Economics | jr3876 |
    | Sameer     | Saxena      | 2024         | SEAS   | Computer Science | Economics | ss6167 |

    And I am on the home page

Scenario: add a new user to the database

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    Then the major of "agh2172" should be "Computer Science"
    Then the minor of "agh2172" should be "Economics"
    Then the school of "agh2172" should be "CC"


Scenario: new user adds past courses to database

    When I follow "Sign Up"
    And I fill in "First Name" with "Axel"
    And I fill in "Last Name" with "Henrikson"
    And I fill in "UNI" with "agh2172"
    And I select "2026" from "Year"
    And I select "CC" from "School"
    And I select "Computer Science" from "Major" 
    And I select "Economics" from "Minor" 
    And I press "Next"
    And I fill in "Course" with "Engineering SaaS"
    And I select "Fall" from "Semester"
    And I select "2022" from "Year"
    And I press "Add"
    And I fill in "Course" with "Computer Networks"
    And I select "Spring" from "Semester"
    And I select "2021" from "Year"
    And I press "Add"
    Then there exists a record that "agh2172" took "Engineering SaaS" in "Fall" "2022"
    Then there exists a record that "agh2172" took "Computer Networks" in "Spring" "2021"
    Then there does not exist a record that "agh2172" took "Advanced Programming" in "Fall" "2021"



