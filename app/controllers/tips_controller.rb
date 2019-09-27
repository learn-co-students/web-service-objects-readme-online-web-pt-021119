class TipsController < ApplicationController
  def index
    foursquare = FoursquareService.new
    @tips = foursquare.tips(session[:token])
  end

  def create
    foursquare = FoursquareService.new
    @tip = foursquare.new_tip(params[:venue_id], params[:tip], session[:token])
    redirect_to tips_path
  end
end
