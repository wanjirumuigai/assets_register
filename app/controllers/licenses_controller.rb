class LicensesController < ApplicationController

  def index
    licenses = License.all
    render json: licenses, status: :ok
  end

end
