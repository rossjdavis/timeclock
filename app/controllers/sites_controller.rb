class SitesController < ApplicationController

  def index
    @sites = Site.all
    if current_user.is_admin?
      render "sites/admin/index"
    else
      render "index"
    end
  end

  def show
    @site = Site.find(params[:id])
    if current_user.is_admin?
      render "sites/admin/show"
    else
      render "show"
    end
  end

  def new
    if current_user.is_admin?
      @site = Site.new
      render "sites/admin/new"
    else
      render "index"
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
    sign_out_and_redirect(current_user)
  end
end
