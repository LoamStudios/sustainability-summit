class Subnav
    attr_reader :path, :text

    def initialize(path, text, current_page)
        @path = path
        @text = text
        @current_page = current_page
    end

    def current_page?
        @current_page
    end
end
