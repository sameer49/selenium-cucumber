require_relative 'methods/javascript_handling_steps'

Then(/^I accept alert$/) do
	handle_alert("accept")
end

Then(/^I dismiss alert$/) do
	handle_alert("dismiss")
end