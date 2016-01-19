# == Schema Information
#
# Table name: people
#
#  id                 :integer          not null, primary key
#  last_name          :string
#  first_name         :string
#  organization       :string
#  title              :string
#  organization2      :string
#  title2             :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  email              :string           default(""), not null
#  encrypted_password :string(128)      default(""), not null
#  confirmation_token :string(128)
#  remember_token     :string(128)      default(""), not null
#
# Indexes
#
#  index_people_on_email           (email)
#  index_people_on_remember_token  (remember_token)
#

class Person < ActiveRecord::Base
    include Clearance::User
    has_and_belongs_to_many :sessions
    has_and_belongs_to_many :teams
end
