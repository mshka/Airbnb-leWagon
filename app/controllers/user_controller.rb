class UserController < ApplicationController
	def show
		@user = User.find(params[:id])
    @posts = Post.where(reserver: @user.id)
	end

  def destroy
    @user = current_user
    @posts = Post.where(reserver: @user.id)
    @posts.each do |post|
      post.reserver = nil
      post.booked = false
      post.save
    end
    current_user = nil
    @user.destroy
    redirect_to root_path
  end
end
