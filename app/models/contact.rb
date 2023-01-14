class Contact < ApplicationRecord
  # adds association to user for there contacts
  belongs_to :user
end
