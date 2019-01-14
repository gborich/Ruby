class UsersController < ApplicationController
  before_action :check_login, only: [:show, :new, :create, :index]

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name], password: params[:user][:password])
    if @user.errors.any?
      flash[:notice] = 'Введите еще раз.'
      render 'new'
    else
      flash[:notice] = 'Успешно!'
      redirect_to users_path
    end
  end

  def index
    @users = User.all
  end

  def show

  end

  def signin

  end

  def login
    u = User.find_by_name(params[:user][:name])
    if u && u.password == params[:user][:password]
      flash[:notice] = 'You were logged in successfully'
      login_user(u)
      redirect_to root_path
    else
      flash[:notice] = 'Password or user is incorrect'
      redirect_to signin_path
    end
  end

  def check_login
    redirect_to signin_path unless logged_in?
  end
end
