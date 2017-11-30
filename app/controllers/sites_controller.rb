class SitesController < ApplicationController
  before_action :auth_admin!

  def index
    @sites = Site.all
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      flash[:notice] = "#{@site.name} has been added"
      redirect_to sites_path
    else
      render :new
    end
  end

  def show
    @site = Site.find(params[:id])
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    if @site.update(site_params)
      flash[:notice] = "#{@site.name} has been updated"
      redirect_to sites_path
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to sites_path
  end

  private
  def site_params
    params.require(:site).permit(:name, :address)
  end

  def auth_admin!
    unless current_user.is_admin?
      redirect_to logs_path
    end
  end
end
