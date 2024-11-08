class CreateSocialMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :social_media do |t|
      t.string :facebook
      t.string :instagram
      t.string :whatsapp

      t.timestamps
    end
  end
end
