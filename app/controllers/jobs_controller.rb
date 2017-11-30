class JobsController < ApplicationController
  before_action :auth_admin!

  def new
    @site = Site.find(params[:site_id])
    @job = @site.jobs.new
  end

  def create
    @site = Site.find(params[:site_id])
    @job = @site.jobs.new(job_params)
    if @job.save
      flash[:notice] = "#{@job.code} has been added"
      redirect_to site_path(@site)
    else
      render :new
    end
  end

  def edit
    @site = Site.find(params[:site_id])
    @job = Job.find(params[:id])
  end

  def update
    @site = Site.find(params[:site_id])
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:notice] = "#{@job.code} has been updated"
      redirect_to site_path(@site)
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:site_id])
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to site_path(@site)
  end

  private
  def job_params
    params.require(:job).permit(:code, :name, :rate, :site_id)
  end

  def auth_admin!
    unless current_user.is_admin
      redirect_to sites_path
    end
  end
end
