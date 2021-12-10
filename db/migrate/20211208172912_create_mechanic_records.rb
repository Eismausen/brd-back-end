class CreateMechanicRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanic_records do |t|
      t.integer :mechanic_id
      t.integer :boardgame_id
    end
  end
end
