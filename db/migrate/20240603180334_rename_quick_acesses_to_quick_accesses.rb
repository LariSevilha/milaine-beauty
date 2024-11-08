class RenameQuickAcessesToQuickAccesses < ActiveRecord::Migration[7.0]
  def change
    rename_table :quick_acesses, :quick_accesses
  end
end