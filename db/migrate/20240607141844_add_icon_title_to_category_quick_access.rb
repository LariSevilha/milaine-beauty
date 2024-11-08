class AddIconTitleToCategoryQuickAccess < ActiveRecord::Migration[7.0]
  def change
    add_column :category_quick_accesses, :icon_title, :string
  end
end
