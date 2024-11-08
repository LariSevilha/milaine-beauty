class CreateCategoryQuickAccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :category_quick_accesses do |t|
      t.string :title

      t.timestamps
    end
  end
end
