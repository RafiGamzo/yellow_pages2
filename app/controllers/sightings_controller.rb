class SightingsController < ApplicationController
  def index
    @sighting = Sighting.all
    @species = Species.all
    @regions = Region.all
  end

  def show
    @sighting = Sighting.find(params[:id])
  end

  def edit
    @sighting = Sighting.find(params[:id])
    @all_regions = Region.all
  end

  def create
    @sighting = Sighting.create(params[:sightings])
    @species = Species.find(params[:sightings][:species_id])
    redirect_to @sighting
  end

  def update
    @sighting = Sighting.find(params[:id])

    if @sighting.update(sighting_params)
      redirect_to @sighting
    else
      render 'edit'
    end
  end

  def destroy
    @sightings = Sighting.find(params[:id])
    @sightings.destroy

    redirect_to sightings_path
  end

  private
    def sighting_params
      params.require(:sighting).permit(:title, :text)
    end
end
