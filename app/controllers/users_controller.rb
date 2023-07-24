class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: UserSerializer.new(@user)}, status: :created
    else
      render json: {error: 'failed to create user'}, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname,:email,:password,:role, :department, :designation)

  end
end
