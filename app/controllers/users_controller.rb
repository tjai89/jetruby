class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    unless current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user || current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

end
