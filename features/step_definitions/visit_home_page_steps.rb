Then(/^I should see "([^"]*)" in a link$/) do |links|
  expect(page).to have_content links
end
