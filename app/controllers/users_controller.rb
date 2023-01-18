class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    puts params
    puts @user
    if @user.valid?
      # @token = encode_token({ user_id: @user.id })
      render json: { "message":"User created successfully"}, status: :created
    else
      render json: { error: @user.errors }, status: :unprocessable_entity
    end
  end


    
  private
    
  def user_params
        params.permit(:first_name, :second_name, :email, :password,:age, :gender, :source_type, :retirement_age, :bank_balance)
  end
end
