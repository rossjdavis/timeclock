class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def clock_in
    @site = Site.find(params[:id])
    @site.logs.create(user: current_user, date: Date.today)
    current_user.update(clocked_in?: true)
    flash[:notice] = `Clocked in at #{Time.now}`
    redirect_to @site
  end

  def clock_out
    @site = Site.find(params[:id])
    @site.logs.update(user: current_user)
    current_user.update(clocked_in?: false)
    flash[:notice] = `Clocked out at #{Time.now}`
    redirect_to @site
  end
end
