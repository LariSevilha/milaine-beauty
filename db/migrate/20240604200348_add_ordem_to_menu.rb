class AddOrdemToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :ordem, :integer
  end
end
