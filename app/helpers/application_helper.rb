# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title(text)
    content_for(:title) { text }
    "<h1>#{text}</h1>"
  end
end
