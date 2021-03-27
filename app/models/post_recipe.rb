class PostRecipe < ApplicationRecord

  belongs_to :user
  attachment :recipe_image
end
