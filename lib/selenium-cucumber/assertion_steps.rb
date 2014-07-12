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
#By ID
Then(/^element having id "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("id", access_name, true)
end

#By NAME
Then(/^element having name "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("name", access_name, true)
end

#By CLASS
Then(/^element having class "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("class", access_name, true)
end

#By XPATH
Then(/^element having xpath "([^\"]*)" should enable$/) do |access_name|
  	check_element_enable("xpath", access_name, true)
end

#By CSS
Then(/^element having css "([^\"]*)" should enable$/) do |access_name|
    check_element_enable("css", access_name, true)
end


#Element disabled checking - Negative test
#By ID
Then(/^element having id "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("id", access_name, false)
end

#By NAME
Then (/^element having name "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("name", access_name, false)
end

#By CLASS
Then (/^element having class "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("class", access_name, false)
end

#By XPATH
Then (/^element having xpath "([^\"]*)" should disable$/) do |access_name|
  	check_element_enable("xpath", access_name, false)
end

#By CSS
Then (/^element having css "([^\"]*)" should disable$/) do |access_name|
    check_element_enable("css", access_name, false)
end

#element presence - positive test
Then(/^I should see element present having id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, true)
end

Then(/^I should see element present having name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, true)
end

Then(/^I should see element present having class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, true)
end

Then(/^I should see element present having xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, true)
end

Then(/^I should see element present having css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, true)
end

#element presence - negative test

Then(/^I should not see element present having id "(.*?)"$/) do |access_name|
    check_element_presence("id", access_name, false)
end

Then(/^I should not see element present having name "(.*?)"$/) do |access_name|
    check_element_presence("name", access_name, false)
end

Then(/^I should not see element present having class "(.*?)"$/) do |access_name|
    check_element_presence("class", access_name, false)
end

Then(/^I should not see element present having xpath "(.*?)"$/) do |access_name|
    check_element_presence("xpath", access_name, false)
end

Then(/^I should not see element present having css "(.*?)"$/) do |access_name|
    check_element_presence("css", access_name, false)
end


#assert check box is checked
#By ID
Then(/^I should see checkbox having id "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("id",access_name)
end

#By NAME
Then(/^I should see checkbox having name "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox having class "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox having xpath "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox having css "(.*?)" checked$/) do |access_name|
  is_checkbox_checked("css",access_name)
end

#assert check box is unchecked
#By ID
Then(/^I should see checkbox having id "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("id",access_name)
end

#By NAME
Then(/^I should see checkbox having name "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("name",access_name)
end

#By CLASS
Then(/^I should see checkbox having class "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("class",access_name)
end

#By XPATH
Then(/^I should see checkbox having xpath "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("xpath",access_name)
end

#By CSS
Then(/^I should see checkbox having css "(.*?)" unchecked$/) do |access_name|
  is_checkbox_unchecked("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button having id "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("id",access_name)
end

#By NAME
Then(/^I should see radio button having name "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("name",access_name)
end

#By CLASS
Then(/^I should see radio button having class "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("class",access_name)
end

#By XPATH
Then(/^I should see radio button having xpath "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button having css "(.*?)" selected$/) do |access_name|
  is_radio_button_selected("css",access_name)
end

#steps to assert radio button checked
#By ID
Then(/^I should see radio button having id "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("id",access_name)
end

#By NAME
Then(/^I should see radio button having name "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("name",access_name)
end

#By CLASS
Then(/^I should see radio button having class "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("class",access_name)
end

#By XPATH
Then(/^I should see radio button having xpath "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("xpath",access_name)
end

#By CSS
Then(/^I should see radio button having css "(.*?)" not selected$/) do |access_name|
  is_radio_button_unselected("css",access_name)
end

#steps to assert option by text from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group having id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group having name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group having class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group having xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group having css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group having id "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group having name "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group having class "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group having xpath "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group having css "(.*?)" selected$/) do |option, access_name|
  is_option_from_radio_button_group_selected("css","value",option,access_name)
end

#steps to assert option by text from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by text from radio button group having id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","text",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by text from radio button group having name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","text",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by text from radio button group having class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","text",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by text from radio button group having xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","text",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by text from radio button group having css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","text",option,access_name)
end

#steps to assert option by value from radio button group not selected
#By ID
Then(/^I should see "(.*?)" option by value from radio button group having id "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("id","value",option,access_name)
end

#By NAME
Then(/^I should see "(.*?)" option by value from radio button group having name "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("name","value",option,access_name)
end

#By CLASS
Then(/^I should see "(.*?)" option by value from radio button group having class "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("class","value",option,access_name)
end

#By XPATH
Then(/^I should see "(.*?)" option by value from radio button group having xpath "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("xpath","value",option,access_name)
end

#By CSS
Then(/^I should see "(.*?)" option by value from radio button group having css "(.*?)" not selected$/) do |option, access_name|
  is_option_from_radio_button_group_not_selected("css","value",option,access_name)
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
