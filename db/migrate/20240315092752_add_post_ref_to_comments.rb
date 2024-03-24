class AddPostRefToComments < ActiveRecord::Migration[7.1]
  def change
    add_reference :comments, :lab, null: false, foreign_key: true
  end
end
