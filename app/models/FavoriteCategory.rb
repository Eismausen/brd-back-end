class FavoriteCategory < ActiveRecord::Base
    belongs_to :category
    belongs_to :user

    def category_name
        category = Category.find(self.category_id)
        category.category_name
    end
end