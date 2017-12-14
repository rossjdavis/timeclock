class RatesController < ApplicationController
  before_action :auth_admin!

  def new
    @header = "New Rate"
    @site = Site.find(params[:site_id])
    @rate = @site.rates.new
    @jobs = Job.all
  end

  def create
    @site = Site.find(params[:site_id])
    @rate = @site.rates.new(rate_params)
    @jobs = Job.all
    if @rate.save
      flash[:notice] = "#{@rate.job_code} has been added"
      redirect_to site_path(@site)
    else
      render :new
    end
  end

  def edit
    @header = "Edit Rate"
    @site = Site.find(params[:site_id])
    @rate = Rate.find(params[:id])
    @jobs = Job.all
  end

  def update
    @site = Site.find(params[:site_id])
    @rate = Rate.find(params[:id])
    @jobs = Job.all
    if @rate.update(rate_params)
      flash[:notice] = "#{@rate.job_code} has been updated"
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
    params.require(:rate).permit(:job_code, :name, :pay_rate, :site_id)
  end

  def auth_admin!
    unless current_user.is_admin
      redirect_to sites_path
    end
  end
end
