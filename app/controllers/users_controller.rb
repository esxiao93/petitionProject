class UsersController < ApplicationController
#   skip_before_action :authorize, only: [ :index, :create]

  def index
    users = User.all
    render json: users, status: :ok
end

def show
    current_user = User.find(session[:current_user])
    puts "User ID:#{session[:current_user]}"
    render json: current_user
end

def create
    user = User.create!(user_params)
    if user.valid?
        session[:current_user] = user.id
        render json: user, status: 201
    else
        render json: { error: "Invalid user" }, status: 422
    end
end

def update
    user = User.find(params[:id])
    user.update!(user_update_params)
    render json: user, status: :ok
end

def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
end
  
  private
  
  def user_params
    params.permit(:name, :email, :username, :district, :password, :congressional_member_id, :password_digest)
  end
  
end
