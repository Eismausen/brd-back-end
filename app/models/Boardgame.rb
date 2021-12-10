class Boardgame < ActiveRecord::Base
    has_many :inventory_records
    has_many :users, through: :inventory_records
    
    has_many :wishlist_records
    has_many :users, through: :wishlist_records

    has_many :mechanics
    has_many :favorite_mechanics, through: :mechanics

    has_many :categories
    has_many :favorite_categories, through: :categories    
end