class LoginController < ApplicationController
    
    def index
        users = User.all
        render json: users, status:200
      end
    
    def create
        user = User.find_by(email: params[:email])
    
        if user&.authenticate(params[:password])
          render json: { message: 'Login successful', user: user }, status: :ok
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
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
end
