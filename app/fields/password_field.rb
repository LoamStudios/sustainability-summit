require "administrate/field/base"

class PasswordField < Administrate::Field::Base
  def to_s
    "*" * 5
  end
end
