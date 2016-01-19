class Subnav
    attr_reader :path, :text

    def initialize(path, text)
        @path = path
        @text = text
    end
end
