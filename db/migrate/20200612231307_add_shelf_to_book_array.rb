class AddShelfToBookArray < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :shelf_id
    add_column :books, :shelf_id, :integer, array: true, default: []
  end
end
