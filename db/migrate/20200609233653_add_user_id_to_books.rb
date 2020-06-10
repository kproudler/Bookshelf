class AddUserIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :user_id, :integer, array: true, default: []
    add_index :books, :user_id
  end
end
