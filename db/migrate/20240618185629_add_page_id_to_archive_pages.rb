class AddPageIdToArchivePages < ActiveRecord::Migration[7.0]
  def change
    add_column :archive_pages, :page_id, :integer
  end
end
