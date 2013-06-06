When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)" within first tweet$/ do |text|
  first(".tweet-list li").should have_content(text)
end

Then /^I should not see "([^"]*)" within first tweet$/ do |text|
  first(".tweet-list li").should_not have_content(text)
end

And /^I click "([^"]*)" on the first tweet$/ do |text|
  first(".tweet-list li").should have_content(text)
  first(".tweet-list li .more_information .favourite_links > a").click
end
