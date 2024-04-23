class RecipePolicy < ApplicationPolicy
    attr_reader :user, :recipe
  
    def initialize(user, recipe)
      @user = user
      @recipe = recipe
    end
  
    def update?
      user == @recipe.creator
    end
  end