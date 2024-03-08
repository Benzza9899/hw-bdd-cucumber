# frozen_string_literal: true

# Module containing methods to map page names to paths.
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb

  def path_to(page_name)
    case page_name
    when /^the (RottenPotatoes )?home\s?page$/ then '/movies'
    when /^the movies page$/ then '/movies'
    else
      generate_custom_path(page_name)
    end
  end

  private

  def generate_custom_path(page_name)
    page_name =~ /^the (.*) page$/
    path_components = ::Regexp.last_match(1).split(/\s+/)
    send(path_components.push('path').join('_').to_sym)
  rescue NoMethodError, ArgumentError
    raise "Can't find mapping from \"#{page_name}\" to a path.\n" \
          "Now, go and add a mapping in #{__FILE__}"
  end
end

World(NavigationHelpers)
