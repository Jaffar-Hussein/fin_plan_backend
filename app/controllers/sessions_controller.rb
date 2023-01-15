class SessionsController < ApplicationController
  def create
    if params[:session].present?
      @user = User.find_by(email: params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        payload = { user_id: @user.id }
        token = JWT.encode(payload, Rails.application.secrets.secret_key_base)
        render json: { status: 'success', user: @user, token: token }, status: :created
      else
        render json: { status: 'error', message: 'Invalid email/password' }, status: :unauthorized
      end
    else
      render json: { status: 'error', message: 'session params missing' }
    end    
  end
  
    
  def register
    user = User.new(user_params)
  
    if user.save
      session[:user_id] = user.id
      render json: { status: 'success', user: user }, status: :created
    else
      render json: { status: 'error', message: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end
  
  def new
    @user = User.new
    render json: @user
  end
  

  def destroy
    session[:user_id] = nil
    render json: { status: 'success' }, status: :ok
  end
    
    private
    
    def user_params
        params.permit(:first_name, :second_name, :email, :password)
    end
end
