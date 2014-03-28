class Api::V1::PalacesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    url = request.url + params[:app_id].to_s;
    @palaces = Rails.cache.read(url)
    if @palaces.nil?
      @palaces = Palace.find(:all, :conditions => {:app_id => params[:app_id]})
      Rails.cache.write(url, @palaces, expires_in: 60.minutes) 
    end
  end
  
end