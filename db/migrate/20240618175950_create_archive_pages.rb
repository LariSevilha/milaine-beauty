class CreateArchivePages < ActiveRecord::Migration[7.0]
  def change
    create_table :archive_pages do |t|
      t.string :title
      t.string :link
      t.string :archive

      t.timestamps
    end
  end
end
