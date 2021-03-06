require "administrate/field/base"

class FormattedDateTimeField < Administrate::Field::Base
  def to_s
    data.strftime(options[:format])
  end
end
