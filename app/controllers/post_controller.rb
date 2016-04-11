

    def create
      @post = Post.new(post_params)
        @post.user = current_user

        respond_to do |format|
          if @post.save
            format.html { redirect_to @post, notice: "{ Post was successfully created." }
            format.json { render :show, status: :created, location: @post }
    end

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = Post.new
    end

    def edit
    end

    def update
    end

    def destroy
    end
