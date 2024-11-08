class CreateQuickAccessViews < ActiveRecord::Migration[7.0]
  def change
    create_table :quick_access_views do |t|
      t.belongs_to :quick_access, null: false, foreign_key: true

      t.timestamps
    end
  end
end
