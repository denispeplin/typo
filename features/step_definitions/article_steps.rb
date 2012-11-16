require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given /^the following articles exists:$/ do |articles_table|
  articles_table.hashes.each do |article|
    content = Content.create(title: article[:title],
      author: article[:author], body: article[:body], published: 1,
      allow_comments: 1)
    # can't create with type, mass-protected
    content.type = 'Article'
    content.save!
  end
end
