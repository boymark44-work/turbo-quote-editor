class Quote < ApplicationRecord

  # Add a validation for name attribute
  validates :name, presence: true 

  # Adds a scope to order the list of Quotes from the newest first
  scope :ordered, -> { order(id: :desc) }
end
