class CreatePostImages < ActiveRecord::Migration[7.0]
  def change
    create_table :post_images do |t|
      t.string :url
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
