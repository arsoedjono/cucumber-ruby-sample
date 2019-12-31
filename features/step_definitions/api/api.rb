# frozen_string_literal: true

Given('headers set:') do |headers|
  Request.headers = headers.rows_hash
end

When(/^sending a (.*) request to "([^"]*)"(?: with body:)?$/) do |*args|
  Request.send(*args)
end

Then('show the response') do
  puts Response.body
end
