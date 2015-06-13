class AddImageToLibraries < ActiveRecord::Migration
  def change
    add_column :libraries, :image, :text
  end
end
