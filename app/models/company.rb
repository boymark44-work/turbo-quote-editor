class Company < ApplicationRecord
  has_many :users, dependent: :destroy # To delete all associated records when an existing record from this model is destroyed 
  has_many :quotes, dependent: :destroy

  validates :name, presence: true
end
