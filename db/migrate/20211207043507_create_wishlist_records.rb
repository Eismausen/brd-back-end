class CreateWishlistRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlist_records do |t|
      t.integer :user_id
      t.integer :boardgame_id
    end
  end
end
