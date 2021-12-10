class Mechanic < ActiveRecord::Base
    has_many :favorite_mechanics
    has_many :users, through: :favorite_mechanics

    belongs_to :boardgame
end