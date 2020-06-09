class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :series
      t.string :author, null: false, array: true, default: []
      t.string :genre, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
