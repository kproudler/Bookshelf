class ChangeBooksAuthorColumnType < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :author, :array, null: false, default: []
    add_column :books, :author, :string
  end
end
