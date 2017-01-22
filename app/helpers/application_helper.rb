module ApplicationHelper
  def google_fonts
    content_tag :link, nil, :href => 'https://fonts.googleapis.com/css?family=Special+Elite', :rel => 'stylesheet'
  end
end
