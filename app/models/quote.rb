class Quote < ApplicationRecord

  # Add a validation for name attribute
  validates :name, presence: true 

  # Adds a scope to order the list of Quotes from the newest first
  scope :ordered, -> { order(id: :desc) }


  #after_create_commit -> { broadcast_prepend_later_to "quotes" } 
  #after_update_commit -> { broadcast_replace_later_to "quotes" }
  #after_destroy_commit -> { broadcast_remove_to "quotes" }

  # This single-line is equivalent to broadcast create, update, and destroy which is the code above. 
  # Applying this syntactic sugar means that we want to broadcast quote creation, updates, and deletions to the "quotes" stream asynchronously.
  broadcasts_to -> (quote) { "quotes" }, inserts_by: :prepend

  belongs_to :company
end
