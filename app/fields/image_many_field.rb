require "administrate/fields/base"


class ImageManyField < Administrate::Field::Base
  def to_s
    data
  end
end

