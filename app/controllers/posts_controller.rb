class PostsController < ApplicationController
  def index
    @posts = current_user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to user_posts_path(@post)
    else
      # redirect_to new_user_post_path(current_user.id)
      render :new
    end
  end

  def edit
    @user = current_user

    @post = Post.find(params[:id])

  end

  def update
    @user = current_user

    @post = Post.find(params[:id])
    @post.title = post_params["title"]
    @post.address = post_params["address"]
    @post.description = post_params["description"]
    if @post.save
      redirect_to user_posts_path(@post)
    else
      # redirect_to new_user_post_path(current_user.id)
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_posts_path(current_user.id)
  end

  private

  def post_params
    params.require(:post).permit(:title,:description, :address)
  end

end
