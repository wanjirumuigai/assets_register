class AssetsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :asset_not_found
skip_before_action :authorized

  def index
    assets = Asset.all
    render json: assets, status: :ok
  end

  def show
    asset = find_asset()
    render json: asset, status: :ok
  end

  private

  def find_asset
    Asset.find(params[:id])
  end

  def asset_not_found
    render json: {error: "Asset not found"}, status: :not_found
  end
end
