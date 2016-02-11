class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
    admin?
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user || current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end
end
