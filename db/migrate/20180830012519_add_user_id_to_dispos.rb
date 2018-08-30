class AddUserIdToDispos < ActiveRecord::Migration[5.2]
  def change
    add_column :dispos, :user_id, :integer
  end
end
