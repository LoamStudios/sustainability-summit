# == Schema Information
#
# Table name: people
#
#  id                  :integer          not null, primary key
#  last_name           :string
#  first_name          :string
#  organization        :string
#  title               :string
#  organization2       :string
#  title2              :string
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  email               :string           default(""), not null
#  encrypted_password  :string(128)      default(""), not null
#  confirmation_token  :string(128)
#  remember_token      :string(128)      default(""), not null
#  admin               :boolean          default(FALSE)
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#
# Indexes
#
#  index_people_on_email           (email)
#  index_people_on_remember_token  (remember_token)
#

class Person < ActiveRecord::Base
    include Clearance::User
    has_attached_file :avatar, styles: { logo: "420x220" }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    has_and_belongs_to_many :sessions
    has_and_belongs_to_many :teams
end
