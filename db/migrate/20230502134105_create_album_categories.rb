class CreateAlbumCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :album_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
