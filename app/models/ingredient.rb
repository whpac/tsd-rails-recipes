class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_one_attached :photo do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  validate :cannot_have_more_than_3_ingrediends

  def cannot_have_more_than_3_ingrediends
    if recipe.ingredients.size > 3
      errors.add(:recipe ,'has too many ingredients')
    end
  end
end
