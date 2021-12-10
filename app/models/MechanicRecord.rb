class MechanicRecord < ActiveRecord::Base
    belongs_to :mechanic
    belongs_to :boardgame
end