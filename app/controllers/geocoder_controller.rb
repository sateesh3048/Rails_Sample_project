class GeocoderController < ApplicationController
  def new
    @geocoder = Geocoder.new
  end
end
