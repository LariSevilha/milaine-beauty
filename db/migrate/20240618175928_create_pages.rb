class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :photo
      t.text :description
      t.string :slug
      t.string :page_link
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
