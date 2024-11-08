class AddViewsCountToQuickAccess < ActiveRecord::Migration[7.0]
  def change
    add_column :quick_accesses, :views_count, :integer 
  end
end
