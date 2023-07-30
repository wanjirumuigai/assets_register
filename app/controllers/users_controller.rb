class UsersController < ApplicationController
  wrap_parameters :user, include: [:id, :firstname, :lastname,:email,:password, :password_confirmation, :role, :department, :designation]
  skip_before_action :authorized, only: [:index, :show, :create, :update]
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
  rescue_from ActiveRecord::RecordInvalid,
  with: :invalid_params

def index
    users = User.all
    render json: users

  end

  def show
    user = User.find_by!(id: params[:id])
    render json: user, status: :ok
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created

  end

  def update
    user = User.find(params[:id])
    user.update!(update_params)
    render json: user, status: :created
  end

  private
  def user_params
    params.require(:user).permit(:id, :firstname, :lastname,:email,:password, :password_confirmation, :role, :department, :designation)

  end

  def update_params
    params.permit(:password,  :department, :designation, :role)
  end
  def user_not_found
    render json: { error: "User not found" }, status: :not_found
  end

  def invalid_params(invalid)
    render json: {
             errors: invalid.record.errors
           },
           status: :unprocessable_entity
  end
end
