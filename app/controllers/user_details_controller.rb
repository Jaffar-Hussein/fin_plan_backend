class UserDetailsController < ApplicationController
    # before_action :authenticate_user!
    # token = request.headers['Authorization'].split(' ').last
    # decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)

    def show
        # @user = User.find(params[:id])
        render json: @user
    end  
    private
#     def authenticate_user
#         unless decoded_token
#           render json: {error: "You are not authorized to access this information"}, status: 401
#         end
#     end
#     def decoded_token
#     if request.headers['Authorization'].present?
#         token = request.headers['Authorization'].split(' ').last
#         JWT.decode(token, Rails.application.secrets.secret_key_base)
#     end
# end
# def authorize_user
#     unless current_user.admin?
#       render json: {error: "You are not authorized to access this information"}, status: 401
#     end
# end
# def current_user
#     @current_user ||= User.find(decoded_token[0]['user_id'])
# end

end
