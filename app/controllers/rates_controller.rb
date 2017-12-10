class RatesController < ApplicationController
  before_action :auth_admin!

  def new
    @site = Site.find(params[:site_id])
    @rate = @site.rates.new
    @jobs = Job.all
  end

  def create
    @site = Site.find(params[:site_id])
    @rate = @site.rates.new(rate_params)
    if @rate.save
      redirect_to site_path(@site)
    else
      render :new
    end
  end

  def edit
    @site = Site.find(params[:site_id])
    @rate = Rate.find(params[:id])
  end

  def update
    @site = Site.find(params[:site_id])
    @rate = Rate.find(params[:id])
    if @rate.update(rate_params)
      redirect_to site_path(@site)
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:site_id])
    @rate = Rate.find(params[:id])
    @rate.destroy
    redirect_to site_path(@site)
  end

  private
  def rate_params
    params.require(:rate).permit(:code, :name, :rate, :site_id)
  end

  def auth_admin!
    unless current_user.is_admin
      redirect_to sites_path
    end
  end
end
