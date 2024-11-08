class CreateQuickAcesses < ActiveRecord::Migration[7.0]
  def change
    create_table :quick_acesses do |t|
      t.string :name
      t.string :link
      t.text :description
      t.string :icon
      t.references :category_quick_access, null: false, foreign_key: true

      t.timestamps
    end
  end
end
