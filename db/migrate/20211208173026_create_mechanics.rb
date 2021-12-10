class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :mechanic_name
      t.string :old_mech_ref
    end
  end
end
