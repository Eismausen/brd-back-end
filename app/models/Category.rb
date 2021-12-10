class Category < ActiveRecord::Base
    has_many :favorite_categories
    has_many :users, through: :favorite_categories
    
    belongs_to :boardgame
end