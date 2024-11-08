class CreateSecretaries < ActiveRecord::Migration[7.0]
  def change
    create_table :secretaries do |t|
      t.string :nome
      t.string :photo
      t.string :page_link
      t.text :description
      t.text :summary
      t.string :slug

      t.timestamps
    end
  end
end
