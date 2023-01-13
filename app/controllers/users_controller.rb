class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save
          # Create the JWT and return it to the client
          token = create_jwt(user)
          render json: { token: token }, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:firstname, :secondname, :email, :password)
    end
    
    def create_jwt(user)
        payload = { user_id: user.id }
        secret = Rails.application.secrets.secret_key_base
        JWT.encode(payload, secret, 'HS256')
    end
end
