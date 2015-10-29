class MyDevise::RegistrationsController < Devise::RegistrationsController

def create
  @user = User.new
  @user.email = user_params["email"]
  @user.password = user_params["password"]
  @user.first_name = user_params["first_name"]
  @user.last_name = user_params["last_name"]
  @user.phone_number = user_params["phone_number"]
  if @user.save
    sign_in @user
    redirect_to root_path
  else
    render :new
  end
end


def update
  @user = current_user
  @user.first_name = user_params["first_name"]
  @user.last_name = user_params["last_name"]
  @user.phone_number = user_params["phone_number"]
  if @user.save
    redirect_to user_path(@user.id)
  else
    render :edit
  end

end

private


def user_params
  params.require(:user).permit(:first_name,:last_name, :phone_number, :email, :password)
end


end
