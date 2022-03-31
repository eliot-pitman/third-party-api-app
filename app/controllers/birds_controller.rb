class BirdsController < ApplicationController
  require 'http'
  def index
    data = HTTP.get("https://api.ebird.org/v2/data/obs/#{params[:region_id]}/recent?key=#{Rails.application.credentials.system.access_key_id}")
    render json: data.parse(:json)
  end

end
