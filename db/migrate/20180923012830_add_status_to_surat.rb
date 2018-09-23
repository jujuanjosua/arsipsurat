class AddStatusToSurat < ActiveRecord::Migration[5.2]
  def change
    add_column :surats, :status, :string
  end
end
