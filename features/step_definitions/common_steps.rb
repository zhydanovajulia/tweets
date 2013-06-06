# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a
# newer version of cucumber-rails. Consider adding your own code to a new file
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.



require 'uri'

module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end

World(WithinHelpers)

When /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

Then /I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end

When /^I remember the content of the first tweet$/ do
  @first_tweet_content = first(".tweet-list li").text
end

Then /^the content of the first tweet is as remembered$/ do
  @first_tweet_content.should == first(".tweet-list li").text
end
