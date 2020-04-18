class UsersController < ApplicationController
    #skip_before_action :ensure_user_logged_in

    def index
      render "users/new"
    end
  
    def show
      render plain: User.find(params[:id]).to_pleasant_string
    end
  
    def create
      User.create!(
        first_name: params[:first_name],
        last_name: params[:last_name],
        email: params[:email],
        password: params[:password],
      )
    end
  
    def login
      render plain: User.where(email: params[:email], password: params[:password]).exists?
    end
  end