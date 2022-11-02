
Given /the following users exist/ do |users_table|
    users_table.hashes.each do |user|
      User.create(user)
    end
  end

  When /^(?:|I )follow "([^"]*)"$/ do |link|
    click_link(link)
  end

  When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
    fill_in(field, :with => value)
  end