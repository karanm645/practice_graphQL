class CreateUserPets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pets do |t|
      t.text :application
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true
    end
  end
end
