# app/models/user.rb
class User < ApplicationRecord
  # Add validations if needed
  validates :email, presence: true, uniqueness: true
  # Add other attributes and their validations as needed
end
