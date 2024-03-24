class AddUsersToLabs < ActiveRecord::Migration[7.1]
  def change
    add_reference :labs, :user, null: false, foreign_key: true
  end
end
