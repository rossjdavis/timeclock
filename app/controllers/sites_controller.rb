class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def clock_in
    @site = Site.find(params[:id])
    @site.logs.create(user: current_user, clock_in: Time.now)
    current_user.update(clocked_in?: true)
  end

  def clock_out
    @site = Site.find(params[:id])
    @site.logs.update(user: current_user, clock_out: Time.now)
    current_user.update(clocked_in?: false)
  end
end
