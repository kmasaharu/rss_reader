class Api::V1::SitesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    url = request.url + params[:app_id].to_s;
    @sites = Rails.cache.read(url)
    if @sites.nil?
      @sites = Site.find(:all, :conditions => {:app_id => params[:app_id]})
      Rails.cache.write(url, @sites, expires_in: 60.minutes)  # 10分で消える。
    end
  end
  
  def show
      @sites = Site.find(params[:id])
  end
  
  private 
  def param_times
    if params[:year].nil? or params[:month].nil? or params[:day].nil? 
      nil
    else
      Time.mktime(params[:year], params[:month], params[:day], 00, 00, 00)
    end
  end
end