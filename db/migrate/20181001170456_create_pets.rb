class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.text :description
      t.boolean :cat_friendly, :default => true
      t.boolean :dog_friendly, :default => true
      t.boolean :child_friendly, :default => true 
      t.timestamps
    end
  end
end
