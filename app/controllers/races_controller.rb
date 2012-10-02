class RacesController < ApplicationController

  def index
    url = APP_CONFIG['ultra_marathon_results_uri']
    respond_to do |format|
      format.json { render json: { url: url } }
    end
  end
end
