Feature: Display accurate requirements for a given user

    As an inquisitive student
    So that I can get help on my course selection
    I want to see an accurate display of my requirements

Background: users in database

    Given the following users exist:
    | first      | last        | year         | school | major            | minor            | uni    |
    | Jackson    | Roberts     | 2023         | SEAS   | Computer Science | Economics        | jr3876 |
    | Sameer     | Saxena      | 2024         | CC     | Economics        | Computer Science | ss6167 |

    And I am on the home page

Scenario: user is in CC, majoring in Economics and minoring in Computer Science

    When I fill in "UNI" with "ss6167"
    And I press "Enter"
    Then I should see "HUMA CC1001"
    And I should not see "CHEM CC1403"
    And I should see "MATH UN1101"
    And I should see "COMS W3134"

Scenario: user is in SEAS, majoring in Computer Science and minoring in Economics

    When I fill in "UNI" with "jr3876"
    And I press "Enter"
    Then I should see "CHEM CC1403"
    And I should not see "HUMA CC1001"
    And I should see "COMS W4115"
    And I should see "ECON UN1105"