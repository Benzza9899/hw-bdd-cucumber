# frozen_string_literal: true

# TL;DR: YOU SHOULD DELETE THIS FILE
# ...
# (Your existing comments)
# Module containing helper methods for scoping within elements.
module WithinHelpers
  def with_scope(locator, &block)
    locator ? within(*selector_for(locator), &block) : yield
  end
end
World(WithinHelpers)

# Single-line step scoper
# When ...
# (Your existing steps)

Given(/^(?:|I )am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

# (Other steps...)

Then(/^show me the page$/) do
  save_and_open_page
    .end
end
