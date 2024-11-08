class CreateAlbumsPages < ActiveRecord::Migration[7.0]
  def change
    create_table :albums_pages do |t|
      t.references :album,  foreign_key: true
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
