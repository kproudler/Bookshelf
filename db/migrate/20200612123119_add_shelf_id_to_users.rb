class AddShelfIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :shelf_id, :integer
  end
end
