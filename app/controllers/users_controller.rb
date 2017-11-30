class UsersController < ApplicationController
  before_action :auth_admin!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "#{@user.fst_name} #{@user.lst_name} has been added"
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "#{@user.fst_name} #{@user.lst_name} updated"
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:fst_name, :lst_name, :username, :job_code, :password, :email)
  end

  def auth_admin!
    unless current_user.is_admin?
      redirect_to logs_path
    end
  end

end
