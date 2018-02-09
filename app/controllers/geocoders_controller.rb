class GeocodersController < ApplicationController

  def new
    @geocoder = Geocoder.new
  end


end
