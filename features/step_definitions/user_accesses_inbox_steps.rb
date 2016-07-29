

Then(/^I should be on the inbox page$/) do
  expect(page.current_path).to eq mailbox_inbox_path
end

Given(/^I am successfully logged in$/) do
  pending
end