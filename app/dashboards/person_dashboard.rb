require "administrate/base_dashboard"

class PersonDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sessions: Field::HasMany,
    teams: Field::HasMany,
    id: Field::Number,
    last_name: Field::String,
    first_name: Field::String,
    organization: Field::String,
    title: Field::String,
    organization2: Field::String,
    title2: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    email: Field::String,
    encrypted_password: Field::String,
    remember_token: Field::String,
    admin: Field::Boolean,
    avatar: Field::Image,
    password: PasswordField
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :avatar,
    :email,
    :last_name,
    :first_name,
    :admin,
    :sessions,
    :teams
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :avatar,
    :email,
    :last_name,
    :first_name,
    :organization,
    :title,
    :organization2,
    :title2,
    :description,
    :admin,
    :password,
    :sessions,
    :teams
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :avatar,
    :email,
    :last_name,
    :first_name,
    :organization,
    :title,
    :organization2,
    :title2,
    :description,
    :sessions,
    :teams,
    :admin,
    :password
  ]

  # Overwrite this method to customize how people are displayed
  # across all pages of the admin dashboard.
  
  def display_resource(person)
    if person.first_name.blank? || person.last_name.blank?
       "#{person.email}"
    else
      "#{person.first_name} #{person.last_name}".strip
    end
  end
end
