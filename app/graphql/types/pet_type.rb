# frozen_string_literal: true

module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :gender, String
    field :age, Integer
    field :description, String
    field :species, String
    field :owner_story, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer
    field :users, [Types::UserType]
  end
end
