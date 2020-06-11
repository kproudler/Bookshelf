class CreateShelves < ActiveRecord::Migration[6.0]
  def change
    create_table :shelves do |t|
      t.integer :user_id, null: false
      t.string :name, default: "My Bookshelf"
      
      t.timestamps
    end
    add_index :shelves, :user_id
  end
end
