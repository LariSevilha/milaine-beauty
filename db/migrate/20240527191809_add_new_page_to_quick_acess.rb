class AddNewPageToQuickAcess < ActiveRecord::Migration[7.0]
  def change
    add_column :quick_acesses, :new_page, :boolean
  end
end
