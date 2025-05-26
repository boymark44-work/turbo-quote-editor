class Quote < ApplicationRecord

  # Add a validation for name attribute
  validates :name, presence: true 
end
