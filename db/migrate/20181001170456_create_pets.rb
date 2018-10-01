class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.text :description
      t.boolean :cat_friendly
      t.boolean :dog_friendly
      t.boolean :child_friendly
      t.timestamps
    end
  end
end
