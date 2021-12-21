class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.find(current_user.id)
  end

  # def edit
  #   unless @user == current_user
  #     redirect_to user_path(current_user)
  #   end
  # end
  #
  # def update
  #   if current_user.update(user_params)
  #     redirect_to user_path(current_user)
  #   else
  #     redirect_to edit_user_registration_path(current_user)
  #   end
  # end
end
