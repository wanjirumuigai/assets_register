class LicensesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :license_not_found

  def index
    licenses = License.all
    render json: licenses, status: :ok
  end

  def show
    license = find_license()
    render json: license, status: :ok
  end


  private

  def find_license()
    License.find(params[:id])
  end

  def license_not_found
    render json: {error: "License not found"}, status: :not_found
  end

end
