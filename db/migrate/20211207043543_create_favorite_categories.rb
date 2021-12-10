class CreateFavoriteCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_categories do |t|
      t.integer :user_id
      t.integer :category_id
    end
  end
end
