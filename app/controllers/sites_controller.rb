class SitesController < ApplicationController
  before_action :auth_admin!, except: [:index, :show, :clock_in, :clock_out]

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
    binding.pry
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

  def clock_in
    @site = Site.find(params[:id])
    @site.logs.create(user: current_user, date: Date.today)
    current_user.update!(clocked_in: true)
    flash[:notice] = "Clocked in at #{Time.now}"
    redirect_to site_path(@site)
  end

  def clock_out
    @site = Site.find(params[:id])
    @site.logs.update(user: current_user)
    current_user.update!(clocked_in: false)
    flash[:notice] = "Clocked out at #{Time.now}"
    sign_out_and_redirect(current_user)
  end

  private
  def site_params
    params.require(:site).permit(:name, :address)
  end

  def auth_admin!
    unless current_user.is_admin
      redirect_to sites_path
    end
  end
end
