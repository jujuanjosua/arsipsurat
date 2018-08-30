class AddSuratIdToDispos < ActiveRecord::Migration[5.2]
  def change
    add_column :dispos, :surat_id, :integer
  end
end
