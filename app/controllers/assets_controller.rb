class AssetsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :asset_not_found
rescue_from ActiveRecord::RecordInvalid, with: :invalid_asset_params
skip_before_action :authorized

  def index
    assets = Asset.all
    render json: assets, status: :ok
  end

  def show
    asset = find_asset()
    render json: asset, status: :ok
  end

  def update
    asset = find_asset()
    asset.update!(update_params)
    render json: asset, status: :accepted
  end

  def create
    asset = Asset.create!(create_params)
    render json: asset, status: :created
  end

  private

  def find_asset
    Asset.find(params[:id])
  end

  def asset_not_found
    render json: {error: "Asset not found"}, status: :not_found
  end

  def update_params
    params.permit(:asset_name, :model, :asset_tag, :serial_no, :category, :status, :purchase_price, :marked_for_disposal)
  end

  def create_params
    params.permit(:asset_name, :model, :asset_tag, :serial_no, :category, :status, :purchase_price)
  end

  def invalid_asset_params(invalid)
    render json: {error: invalid.record.errors}, status: :unprocessable_entity
  end
end
