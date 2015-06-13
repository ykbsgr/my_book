class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :book_name
      t.string :write_name
      t.integer :price
      t.string :publisher
      t.date :releasedate
      t.string :isbn_code

      t.timestamps null: false
    end
  end
end
