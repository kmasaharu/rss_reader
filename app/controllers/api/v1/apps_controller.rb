class Api::V1::AppsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
      @apps = App.find(:all)
  end
  
end