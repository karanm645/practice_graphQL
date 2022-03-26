module Types
  class QueryType < Types::BaseObject

    field :pets, [Types::PetType], null: false

    def pets
      Pet.all
    end

    field :pet, Types::PetType, null: false do
      argument :id, ID, required: true
    end

    field :users, [Types::UserType], null: false

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
