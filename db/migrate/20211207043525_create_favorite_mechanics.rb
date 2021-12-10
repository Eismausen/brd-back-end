class CreateFavoriteMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_mechanics do |t|
      t.integer :user_id
      t.integer :mechanic_id
    end
  end
end
