class RegionsController < ApplicationController

  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
  end

  def create
    @region = Region.new(region_params)

    @region.save
    redirect_to @region
  end

  private
    def region_params
      params.require(:region).permit(:title, :text)
    end
end
