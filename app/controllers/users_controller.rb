class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
  #
  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     log_in @user
  #     flash[:success] = "Welcome to the Note Book App!"
  #     redirect_to @user
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def import_from_quick_connect
  #   ImportWizard::ImportData.new(:quick_connect_api, session).import_data
  # end
  #
  # private
  #
  #   def user_params
  #     params.require(:user).permit(:name, :email, :company, :password,
  #                                  :password_confirmation)
  #   end

end
