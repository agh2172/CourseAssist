CourseAssist
Team Members -- Jackson Roberts (jr3876), Sameer Saxena (ss6167), Axel Henrikson (agh2172), Lucas Cremers (lfc2136)

Starting, Using, and Testing CourseAssist:

Specifications:

Ruby version: 2.7.6,
OS: Mac OS 12.6,
Branch to grade: proj-iter-1

(1) bundle install (this will install all the necessary gems)

(2) bin/rails server 

Please be sure to specify the Ruby version used, your machine's OS (Mac, Ubuntu, etc.), version, and the branch that you'd like us to grade on.

At this point, you should have a running instance of courseAssist on your computer. On the landing page, you will see two options, one that says “Sign In,” and the other that says “Sign Up.” If this is your first time using courseAssist, click “Sign Up.” This will redirect you to a new page that asks to enter your uni, year, first and last name, school, major and minor. Entering the required data and pressing “Next” will take you to another page that allows you to enter the past courses you have taken. For each course, enter its name, as well as the year and semester you took it. When you have filled out the information for a course, click “Add,” which will save that course to your account and clear the fields, which will allow you to enter more courses. When you have finished adding all your courses, click “Finish Registration.” This will take you to your dashboard, where you can view insightful information about your school, major and minor requirements. While the dashboard is still in its preliminary stages, subsequent iterations will show you exactly which courses you have left to take, help you plan out courses based on past courseload and necessary prerequisites, and allow you to add courses of interest to a list for future reference. On future logins, simply enter your uni in the text field on the landing page and press “Sign In.” Doing so will pull up all of your saved data from when you registered. 

To test the user stories written in cucumber, run: 
rake cucumber

And to run the RSpec tests, run:
rake spec

Link to github: https://github.com/agh2172/CourseAssist
Link to Heroku deployment: https://stormy-badlands-60705.herokuapp.com/

