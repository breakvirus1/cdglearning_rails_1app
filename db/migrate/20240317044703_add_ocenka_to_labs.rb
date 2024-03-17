class AddOcenkaToLabs < ActiveRecord::Migration[7.1]
  def change
    add_column :labs, :ocenka, :string
  end
end
