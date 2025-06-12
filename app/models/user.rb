class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # For the sake of the demo, we will only use two features from Devise which are:
  # :database_authenticatable - To sign in users
  # :validatable - To validate email and password using devise's built-in validations
  devise :database_authenticatable, :validatable

  belongs_to :company
end
