class UserController < ApplicationController
	def show
		@user = current_user
	end

  def destroy
    @user = current_user
    current_user = nil
    @user.destroy
    redirect_to root_path
  end
end
