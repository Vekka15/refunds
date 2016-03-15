class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(category_params)
    category.save
    redirect_to root_path
  end

  def category_params
    params.require(:category).permit(:name,:percent)
  end
end
