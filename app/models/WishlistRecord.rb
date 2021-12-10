class WishlistRecord < ActiveRecord::Base
    belongs_to :user
    belongs_to :boardgame
end