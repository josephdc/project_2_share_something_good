class PostsController < ApplicationController

before_action :only_my_post, only: [:edit, :update, :destroy]

    def create
      @post = Post.new(post_params)
      @post.user_id = @post.user_id.to_i
        respond_to do |format|
          if @post.save
            format.html { redirect_to @post.category, notice: "Post was successfully created." }
            format.json { render :show, status: :created, location: @post }
          else
            format.html { redirect_to @post.category, notice: @post.errors.full_messages.to_sentence }
            format.json {render json: @post.errors, status: :unprocessable_entity }
          end
        end
    end

    def index
        @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
          render "post"
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])

      if @post.update_attributes(post_params)
          redirect_to post_path(@post)
      else
          render :edit
      end
    end

    def destroy
        @post = Post.find(params[:id])
        category = @post.category
        @post.destroy
        redirect_to category_path(category)
    end

    private

    def post_params
        params.require(:post).permit(:description, :user_id, :category_id )
    end
    def set_post
        @post = Post.find(params[:id])
    end

    def only_my_post
        @post = Post.find(params[:id])
        redirect_to category_path(category), notice: "Not authorized!" if (current_user.id != @post.user.id)
  end

end
