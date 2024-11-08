class CreateArchiveSecretaries < ActiveRecord::Migration[7.0]
  def change
    create_table :archive_secretaries do |t|
      t.string :title
      t.string :archive
      t.references :secretary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
