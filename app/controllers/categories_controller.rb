class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end

    def show
        @post = Post.new
        @category = Category.find(params[:id])
    end
end
