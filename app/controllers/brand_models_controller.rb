class BrandModelsController < ApplicationController

  def index
    @bike = Bike.new
    @brand = Brand.new
    @selected_brand = Brand.find(params[:brand_id])
    @brand_models = BrandModel.where(brand: params[:brand_id])

    respond_to do |format|
      format.js
    end
  end
end
