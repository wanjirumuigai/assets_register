class AssetsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :asset_not_found
rescue_from ActiveRecord::RecordInvalid, with: :invalid_asset_params


  def index
    assets = Asset.all
    render json: assets, include: :assigns, status: :ok
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

  # dashboard route to show all dashboard metrics
  def dashboard
    users = User.all.count

    total_assets = Asset.all.count

    assigned_assets = Assign.all.count

    assets_in_repair = Asset.all.select {|asset| asset.status == "in_repair"}.count

    assets_obsolete = Asset.all.select {|asset| asset.status == "obsolete"}.count

    licenses = License.all.count

    expired_licenses = License.all.select {|license|   license.expiry_date < Date.today }.count

    categories = Asset.all.map { |asset| asset.category }.uniq.count

    render json: {
      users: users,
      active_assets: total_assets,
      allocated_assets: assigned_assets,
      asset_categories: categories,
      under_repair: assets_in_repair,
      disposed_assets: assets_obsolete,
      licenses: licenses,
      expired_licenses: expired_licenses
    }, status: :ok
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
