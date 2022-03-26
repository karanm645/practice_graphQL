class User < ApplicationRecord
  has_many :pets
  has_many :user_pets
  has_many :pets, through: :user_pets
end
