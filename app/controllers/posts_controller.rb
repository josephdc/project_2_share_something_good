class PostsController < ApplicationController

    def create
      @post = Post.new(post_params)
        @post.user = current_user

        respond_to do |format|
          if @post.save
            format.html { redirect_to @post, notice: "{ Post was successfully created." }
            format.json { render :show, status: :created, location: @post }
          else
            format.html { render :new }
            format.json {render json: @post.errors, status: :unprocessable_entity }
          end
        end
    end

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = Post.new
        render "post"
    end

    def edit
      @post = Post.new
        render "post"
    end

    def update
      respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Your Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to post_url, notice: "Your Post was successfully deleted."}
        format.json { head :no_content }
      end
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:content)
    end
end
