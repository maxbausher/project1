class UsersController < ApplicationController

  before_action :get_user, only: [ :show, :edit, :update ]
  before_action :check_if_admin, only: [ :index ]

  before_action :check_if_logged_in, only: [:contact_create, :setting_create, :edit, :update]

  def get_user
      @user = User.find params["id"]
  end
  def new
      @user = User.new
  end

  def create

      @user = User.new(user_params)

      if params[:file].present?
        req = Cloudinary::Uploader.upload params[:file]
      end

      @user.image = req['public_id']
      @user.save

      if @user.id.present?
          session[:user_id] = @user.id
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
      redirect_to root_path unless @current_user == @user
  end

  def update
      @user = @current_user #unless @current_user.is_admin?
      @user.update user_params
      redirect_to user_path( params["id"] )
  end

  def destroy
  end

  def user_setting_update
      @setting = Setting.find(params["id"])
      @setting.credit.update setting_params
      redirect_to user_path(@setting.user)
  end

  def user_interest_update
    interests = params["interests"]

    interests.each do |key, name|
      interest = Interest.find( key )
      if interest.item != name["item"]
        interest.item = name["item"]
        interest.save
      end
    end
    redirect_to :back
end

  private
  def user_params
      params.require(:user).permit(:first_name, :surname, :email, :password, :password_confirmation, :gender, :birthday)
  end

  def setting_params
      params.require(:setting).permit(:credit_card_full_name, :credit_card_number, :expiration_date, :csv, :credit_card_type)
  end

end
