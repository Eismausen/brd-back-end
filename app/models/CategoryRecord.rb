class CategoryRecord < ActiveRecord::Base
    belongs_to :category
    belongs_to :boardgame
end