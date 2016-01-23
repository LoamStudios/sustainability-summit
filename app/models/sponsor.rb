# == Schema Information
#
# Table name: sponsors
#
#  id                :integer          not null, primary key
#  name              :string
#  url               :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  logo_file_name    :string
#  logo_content_type :string
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

class Sponsor < ActiveRecord::Base
    has_attached_file :logo, styles: { thumb: "210x110", large: "420x220" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
    has_and_belongs_to_many :sponsorships
end
