class HomeController < ApplicationController
  def search
    @search_value = params["searchvalue"]
    @user_posts = current_user.posts
    @posts = Post.where("posts.title iLIKE ? OR posts.description iLIKE ? OR posts.address iLIKE ?", "%#{params["searchvalue"].downcase}%", "%#{params["searchvalue"].downcase}%", "%#{params["searchvalue"].downcase}%")
    @posts = @posts - @user_posts
  end
end
