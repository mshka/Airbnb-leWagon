class HomeController < ApplicationController
  def search
     @posts = Post.where("posts.title iLIKE ? OR posts.description iLIKE ? OR posts.address iLIKE ?", "%#{params["searchvalue"].downcase}%", "%#{params["searchvalue"].downcase}%", "%#{params["searchvalue"].downcase}%")
  end
end
