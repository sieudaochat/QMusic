class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def new
    @user = User.new profile: Profile.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "welcome"
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit :email, :password, :password_confirmation,
      profile_attributes: [:name, :date_of_birth, :address, :description,
      :gender]
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "notfound"
      redirect_to root_url
    end
  end
end
