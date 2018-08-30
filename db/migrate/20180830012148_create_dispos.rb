class CreateDispos < ActiveRecord::Migration[5.2]
  def change
    create_table :dispos do |t|
      t.text :dispo

      t.timestamps
    end
  end
end
