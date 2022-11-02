
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create(user)
  end
end

Then /^the major of "(.+)" should be "(.+)"/ do |uni, major|
  user = User.find_by(uni: uni)
  expect(user.major).to match(major)
end

Then /^the minor of "(.+)" should be "(.+)"/ do |uni, minor|
  user = User.find_by(uni: uni)
  expect(user.minor).to match(minor)
end

Then /^the school of "(.+)" should be "(.+)"/ do |uni, school|
  user = User.find_by(uni: uni)
  expect(user.school).to match(school)
end

Then /^there exists a record that "(.+)" took "(.+)" in "(.+)" "(.+)"/ do |uni, course, semester, year|
  ac = Addcourse.find_by(uni: uni, course: course, semester: semester, year: year)
  expect(ac.nil?).to be false
end

Then /^there does not exist a record that "(.+)" took "(.+)" in "(.+)" "(.+)"/ do |uni, course, semester, year|
  ac = Addcourse.find_by(uni: uni, course: course, semester: semester, year: year)
  expect(ac.nil?).to be true
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
    click_link(link)
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  expect(page).not_to have_content(text)
end







