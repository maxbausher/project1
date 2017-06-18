class UsersController < ApplicationController

  before_action :get_user, only: [ :show, :edit, :update ]
  before_action :check_if_admin, only: [ :index ]

  before_action :check_if_logged_in, only: [:contact_create]

  def get_user
      @user = User.find params["id"]
  end
  def new
      @user = User.new
  end

  def create
      @user = User.create user_params
      if @user.id.present?
          session[:user_id] = @user.idea
          redirect_to user_path(@user.id)
      else
          render :new
      end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :surname, :email, :password, :password_confirmation, :gender, :birthday)
  end
end
