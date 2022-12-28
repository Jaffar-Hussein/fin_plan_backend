class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
    
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to dashboard_path
        else
          flash[:error] = "Invalid email or password"
          redirect_to login_path
        end
      end
    
      def register
        user = User.new(user_params)
    
        if user.save
          session[:user_id] = user.id
          redirect_to dashboard_path
        else
          flash[:error] = user.errors.full_messages.join(", ")
          redirect_to register_path
        end
      end
    
      private
    
      def user_params
        params.permit(:firstname, :secondname, :email, :password)
      end
end
