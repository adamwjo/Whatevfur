class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.boolean :has_children, :default => false
      t.timestamps
    end
  end
end
