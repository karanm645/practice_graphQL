class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :description
      t.string :species
      t.text :owner_story
      
      t.timestamps
    end
  end
end
