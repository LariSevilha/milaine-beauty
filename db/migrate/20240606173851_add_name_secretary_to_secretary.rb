class AddNameSecretaryToSecretary < ActiveRecord::Migration[7.0]
  def change
    add_column :secretaries, :name_secretary, :string
  end
end
