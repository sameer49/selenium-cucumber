require_relative 'methods/assertion_methods'

def valid_locator_type? type
  %w(id class css name xpath).include? type
end

#Page title checking
Then(/^I see page title as "(.*?)"$/) do |title|
  	check_title(title)
end

#Check element text steps

Then(/^I should\s*((?:not)?)\s+see text as "(.*?)" for element having (.+) "(.*?)"$/) do |present, value, type, access_name|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  check_element_text(type, value, access_name, present.empty?)
end

# To check attribute value

Then(/^I should\s*((?:not)?)\s+see attribute "(.*?)" having value "(.*?)" for element having (.+) "(.*?)"$/) do |present, name , value , type, access_name|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  check_element_attribute(type, name, value, access_name, present.empty?)
end

#Element enabled checking
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+be (enable|disabled)$/) do |type, access_name, present, state|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  flag = state == "enabled"
  flag = !flag unless present.empty?
  check_element_enable(type, access_name, flag)
end


#element presence
Then(/^I should\s*((?:not)?)\s+see element present having (.+) "(.*?)"$/) do |present, type, access_name|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  check_element_presence(type, access_name, present.empty?)
end


#assert check box is checked
Then(/^I should\s*((?:not)?)\s+see checkbox having (.+) "(.*?)" (checked|unchecked)$/) do |present, type, access_name, state|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  flag = state == "checked"
  flag = !flag unless present.empty?
  is_checkbox_checked(type, access_name, flag)
end

#steps to assert radio button checked
Then(/^I should\s*((?:not)?)\s+see radio button having (.+) "(.*?)" (selected|unselected)$/) do |present, type, access_name, state|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  flag = state == "checked"
  flag = !flag unless present.empty?
  is_radio_button_selected(type, access_name, flag)
end


#steps to assert option by text from radio button group selected
Then(/^I should\s*((?:not)?)\s+see "(.*?)" option by (.+) from radio button group having (.+) "(.*?)" (selected|unselected)$/) do |present, option, attr, access_name, type, state|
  raise "Invalid locator type - #{type}" unless valid_locator_type? type
  flag = state == "selected"
  flag = !flag unless present.empty?
  is_option_from_radio_button_group_selected(type, attr, option, access_name, flag)
end

#steps to check link presence

Then(/^I should see link present having text "(.*?)"$/) do |access_name|
    check_element_presence("link", access_name, true)
end

Then(/^I should see link not present having text "(.*?)"$/) do |access_name|
    check_element_presence("link", access_name, false)
end

Then(/^I should see link present having partial text "(.*?)"$/) do |access_name|
    check_element_presence("partial_link_text", access_name, true)
end

Then(/^I should see link not present having partial text "(.*?)"$/) do |access_name|
    check_element_presence("partial_link_text", access_name, false)
end
