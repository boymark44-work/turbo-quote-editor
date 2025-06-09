class Quote < ApplicationRecord

  # Add a validation for name attribute
  validates :name, presence: true 

  # Adds a scope to order the list of Quotes from the newest first
  scope :ordered, -> { order(id: :desc) }

  # Broadcast the HTML of the created quote to our users right after it was created
  #after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self }, target: "quotes" }
  after_create_commit -> { broadcast_prepend_to "quotes" } # => This is the syntactic sugar equivalent of the code above

  # Broadcast quote updates
  after_update_commit -> { broadcast_replace_to "quotes" }
end
