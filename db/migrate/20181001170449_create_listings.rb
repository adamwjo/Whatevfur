class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :sitter_id
      t.integer :client_id
      t.date :start_date
      t.text :description
      t.integer :price
      t.boolean :available, :default => true 
      t.timestamps
    end
  end
end
