class UserDetailsController < ApplicationController
    # before_action :authenticate_user!
    # token = request.headers['Authorization'].split(' ').last
    # decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)

    def show
        # @user = User.find(params[:id])
        render json: @user
    end  
    def update 
        # @user= current_user
        @user.update(user_params)
        render json:@user
      end
    private
    def user_params
        params.permit(:first_name, :second_name, :email, :age, :gender, :source_type, :retirement_age, :bank_balance)
  end

end
