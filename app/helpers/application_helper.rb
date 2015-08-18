module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Scott Zhou"
    if page_title.empty?
      "#{base_title}'s Homepage"
    else
      "#{page_title} | #{base_title}"
    end
  end
end
