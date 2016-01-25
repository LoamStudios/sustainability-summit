# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  event_id           :integer
#

class Photo < ActiveRecord::Base
    has_attached_file :image, styles: { small: "154x154#", medium: "300x200#", large: "600x400#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    belongs_to :event
end
