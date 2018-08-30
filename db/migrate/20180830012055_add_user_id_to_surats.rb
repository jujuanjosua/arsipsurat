class AddUserIdToSurats < ActiveRecord::Migration[5.2]
  def change
    add_column :surats, :user_id, :integer
  end
end
