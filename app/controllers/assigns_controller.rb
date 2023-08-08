class AssignsController < ApplicationController
  wrap_parameters :assign, include: [:id, :user_id, :asset_id, :location, :department, :assigned_by, :is_returned, :return_date, :received_by]
 
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_params
def index
   assigned = Assign.all
   render json: assigned, status: :ok
end

def show
  assign  = Assign.find_by!(id: params[:id])
  render json: assign, status: :ok
end

def create

  asset_params = params.require(:_json)

    assets = asset_params.map do |asset_data|
      Assign.create(asset_data.permit(:asset_id, :assigned_by, :department, :location, :user_id))
    end

    render json: assets
  end




def update
  assign = Assign.find(params[:id])
  assign.update!(update_params)
  render json: assign, status: :created
end

private

def assign_params
  params.permit(:id, :user_id, :asset_id, :location, :department, :assigned_by, :is_returned, :return_date, :received_by)
end

def update_params
  params.permit(:user_id, :location, :department, :assigned_by, :is_returned, :return_date, :received_by)
end

def item_not_found
  render json: {error: "Item not found"}, status: :not_found
end

def invalid_params(invalid)
  render json: {
    errors: invalid.record.errors
  },
  status: :unprocessable_entity
end
end
