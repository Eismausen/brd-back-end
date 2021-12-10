class CreateCategoryRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :category_records do |t|
      t.integer :category_id
      t.integer :boardgame_id
    end
  end
end
