class User < ActiveRecord::Base
    has_many :inventory_records
    has_many :boardgames, through: :inventory_records

    has_many :wishlist_records
    has_many :boardgames, through: :wishlist_records

    has_many :favorite_mechanics
    has_many :mechanics, through: :favorite_mechanics
    
    has_many :favorite_categories
    has_many :categories, through: :favorite_categories    
end