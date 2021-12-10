class FavoriteMechanic < ActiveRecord::Base
    belongs_to :mechanic
    belongs_to :user

    def mechanic_name
        Mechanic.find(self.mechanic_id)
    end
end