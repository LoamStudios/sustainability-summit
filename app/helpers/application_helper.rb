module ApplicationHelper
    def page_title(title)
        site_name = "MIT Sustainability Summit"
        title.present? ? "#{title} | #{site_name}" : site_name
    end
end
