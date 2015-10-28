class PostsController < ApplicationController
  def index
    @posts = current_user.posts
  end

  def show
    
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    #todo user id parameter
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to user_posts_path(current_user.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title,:description, :address)
  end

end
