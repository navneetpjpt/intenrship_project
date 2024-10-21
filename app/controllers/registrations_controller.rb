class RegistrationsController < ApplicationController
  
  def index
    users = User.all
    render json: users, status:200
  end
  
  def create
      user = User.new(user_params)
  
      if user.save
        render json: user, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end


    def show
      user = User.find_by(id: params[:id])
      if user
        render json: user, status: 200
      else
        render json: {error: "Not Found"}  
      end
    end
  
    private
  
    def user_params
      params.permit(:username, :email, :password)
    end
  end
  