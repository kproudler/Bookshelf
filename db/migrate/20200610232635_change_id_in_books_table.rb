class ChangeIdInBooksTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :user_id
    add_column :books, :shelf_id, :integer
  end
end