class Pet < ApplicationRecord
  belongs_to :user
  has_many :user_pets
  has_many :users, through: :user_pets
end
