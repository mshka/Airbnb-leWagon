class MyDevise::RegistrationsController < Devise::RegistrationsController

def create

  super
  @user.first_name = user_params["first_name"]
  @user.last_name = user_params["last_name"]
  @user.phone_number = user_params["phone_number"]
  @user.save
end



private


def user_params
  params.require(:user).permit(:first_name,:last_name, :phone_number)
end


end
