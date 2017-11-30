class LogsController < ApplicationController

  def index
    @site = Site.find(1)
  end

  def clock_in
    @site = Site.find(params[:id])
    @site.logs.create(user: current_user, date: Date.today)
    current_user.update(clocked_in?: true)
    flash[:notice] = "Clocked in at #{Time.now}"
    redirect_to logs_path
  end

  def clock_out
    @site = Site.find(params[:id])
    @site.logs.update(user: current_user)
    current_user.update(clocked_in?: false)
    flash[:notice] = "Clocked out at #{Time.now}"
    sign_out_and_redirect(current_user)
  end
end
