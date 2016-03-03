require "administrate/field/base"


class ImageManyField < Administrate::Field::Base
  def to_s
    data
  end
end

