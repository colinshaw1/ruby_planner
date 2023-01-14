class Todo < ApplicationRecord
  # adds association to user for there tasks
  belongs_to : user
end
