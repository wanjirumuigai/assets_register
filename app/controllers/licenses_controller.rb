class LicensesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :license_not_found
rescue_from ActiveRecord::RecordInvalid, with: :invalid_params

  def index
    licenses = License.all
    render json: licenses, status: :ok
  end

  def show
    license = find_license()
    render json: license, status: :ok
  end

  def create
    new_license = License.create!(license_params)
    render json: new_license, status: :created
  end

  def update
    license = find_license()
    license.update!(license_params)
    render json: license, status: :accepted
  end


  private

  def find_license()
    License.find(params[:id])
  end

  def license_not_found
    render json: {error: "License not found"}, status: :not_found
  end

  def invalid_params(invalid)
    render json: {error: invalid.record.errors}, status: :unprocessable_entity
  end

  def license_params
    params.permit(:license_name, :purchase_date, :expiry_date, :number_of_users)
  end

end
