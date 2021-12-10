class CreateBoardgames < ActiveRecord::Migration[6.1]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.string :url
      t.float :price_usd
      t.float :msrp
      t.integer :year_published
      t.integer :min_players
      t.integer :max_players
      t.integer :min_playtime
      t.integer :max_playtime
      t.integer :min_age
      t.string :description_preview
      t.string :description
      t.string :commentary
      t.string :faq
      t.string :thumb_url
      t.string :image_url
      t.string :publisher
      t.string :designer
      t.string :artist
      t.float :learning_complexity
      t.float :strategy_complexity
      t.float :bga_rating
    end
  end
end
