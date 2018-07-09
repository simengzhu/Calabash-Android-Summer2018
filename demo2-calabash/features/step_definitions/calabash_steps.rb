require 'calabash-android/calabash_steps'

When (/^I rotate device to landscape$/) do
    perform_action('set_activity_orientation', 'landscape')
end

When (/^I rotate device to portrait$/) do
    perform_action('set_activity_orientation', 'portrait')
end

When (/^I hide the keyboard$/) do
    hide_soft_keyboard
end