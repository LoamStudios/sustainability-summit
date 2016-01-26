require "administrate/base_dashboard"

class SponsorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sponsorships: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    logo: Field::Image
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :logo,
    :name,
    :url,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = COLLECTION_ATTRIBUTES

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :logo,
    :name,
    :url,
    :sponsorships
  ]

  # Overwrite this method to customize how sponsors are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(sponsor)
    "#{sponsor.name}"
  end
end
