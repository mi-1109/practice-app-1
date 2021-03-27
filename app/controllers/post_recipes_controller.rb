class PostRecipesController < ApplicationController
  def new
    @post_recipe = PostRecipe.new
  end

  def create
    @post_recipe = PostRecipe.new(post_recipe_params)
    @post_recipe.user_id = current_user.id
    @post_recipe.save
    redirect_to root_path
  end

  def index
  end

  def show
    @post_recipe = PostRecipe.find(params[:id])
  end

  def destroy
  end

  private

  def post_recipe_params
    params.require(:post_recipe).permit(:title, :caption, :recipe_image)
  end
end
